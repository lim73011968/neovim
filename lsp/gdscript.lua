local ncat_path = 'C:/Users/chanl/bin/ncat.exe'
return {
    cmd = { ncat_path, "-c","127.0.0.1", "6005"},
    filetypes = { 'gd', 'gdscript', 'gdscript3' },
}
