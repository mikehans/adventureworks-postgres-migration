# Replace schema name with saleslt
# Replace aws_sqlserver_ext.newid() with uuid_generate_v4()
# Remove  WITH (
#        OIDS=FALSE
#        )
# replace m_adventureworks_dbo.name with varchar(50)
# TODO: Check on timestamp requirements
# Ensure constraints:
#   * primary key
#   * unique
#   * Foreign key
#   * check constraints
# with constraints, remove the random number padded at end of every constraint name

$sql = Get-Content .\pg_tables.sql;

# edit schema name  
$sql = $sql -replace 'm_adventureworks_saleslt', 'saleslt'

$sql = $sql -replace 'aws_sqlserver_ext.newid', 'uuid_generate_v4'

$sql = $sql -replace 'm_adventureworks_dbo.namestyle (NOT NULL DEFAULT) \(0\)', 'boolean $1 false'

$sql = $sql -replace 'm_adventureworks_dbo.name', 'VARCHAR(50)'

$sql = $sql -replace 'm_adventureworks_dbo.phone', 'VARCHAR(25)'

$sql = $sql -replace 'm_adventureworks_dbo.flag (NOT NULL DEFAULT) \(1\)', 'boolean $1 true'

$sql = $sql -replace 'm_adventureworks_dbo.ordernumber', 'VARCHAR(25)'

$sql = $sql -replace 'm_adventureworks_dbo.accountnumber', 'VARCHAR(15)'


# not working
# $sql = RemoveWithOids

$sql1 = EditConstraints

$sql2 = AddIfExistsCheck($sql1)

Set-Content -Path .\testfile.sql -Value $sql2

function EditConstraints {
    $pattern = '((ADD|DROP) CONSTRAINT) (.{2}_.*)_\d*';

    $result = ''

    $sql | ForEach-Object {
        if ($_ -match $pattern) {
            write-host "Matched line: $_"
            $line = [regex]::Replace($_, $pattern, '$1 $3');
            write-host $line
            $result += $line + "`n"
        }
        else {
            write-host $_
            $result += $_ + "`n"
        }
    }

    return $result
}

function AddIfExistsCheck ($s){
    $pattern = 'ALTER TABLE (.*) DROP CONSTRAINT'
    
    $result = ''

    $s | ForEach-Object {
        if ($_ -match $pattern){
            write-host "Matched line: $_"
            $line = [regex]::Replace($_, $pattern, 'ALTER TABLE IF EXISTS $1 DROP CONSTRAINT')
            $result += $line +"`n"
        }
        else {
            write-host $_
            $result += $_ + "`n"
        }
    }

    return $result
}

function RemoveWithOids ($s) {
    $pattern = '\n.*WITH \(\n.*OIDS=FALSE\n.*\);'

    $result= ''

    $s | ForEach-Object {
        if ($_ -match $pattern){
            write-host "Matched line: $_"
            $line = [regex]::Replace($_, $pattern, ';')
            write-host $line
            $result += $line + "`n"
        }
        else {
            write-host .\.idea
            $result += $_ + '`n'
        }
    }
}
