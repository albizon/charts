{{/* vim: set filetype=mustache: */}}


{{- define "lemonldapNG.ini.global.header" }}
    ;==============================================================================
    ; LemonLDAP::NG local configuration parameters
    ;
    ; This file is dedicated to configuration parameters override
    ; You can set here configuration parameters that will be used only by
    ; local LemonLDAP::NG elements
    ;
    ; Section "all" is always read first before "portal", "handler"
    ; and "manager"
    ;
    ; Section "configuration" is used to load global configuration and set cache
    ; (replace old storage.conf file)
    ;
    ; Other section are only read by the specific LemonLDAP::NG component
    ;==============================================================================
    
{{- end }}


{{- define "lemonldapNG.ini.global.localCache" }}
    
    ; LOCAL CACHE CONFIGURATION
    ;
    ; To increase performances, use a local cache for the configuration. You have
    ; to choose a Cache::Cache module and set its parameters. Example:
    ;
    ;           localStorage = Cache::FileCache
    ;           localStorageOptions={                             \
    ;               'namespace'          => 'lemonldap-ng-config',\
    ;               'default_expires_in' => 600,                  \
    ;               'directory_umask'    => '007',                \
    ;               'cache_root'         => '/tmp',               \
    ;               'cache_depth'        => 3,                    \
    ;           }
    localStorage=Cache::FileCache
    localStorageOptions={                             \
        'namespace'          => 'lemonldap-ng-config',\
        'default_expires_in' => 600,                  \
        'directory_umask'    => '007',                \
        'cache_root'         => '/tmp',               \
        'cache_depth'        => 3,                    \
    }
    
{{- end }}
