grails.plugin.springsecurity.auth.loginFormUrl = '/login'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl = '/login?error=1'
grails.plugin.springsecurity.securityConfigType = "InterceptUrlMap"
grails.plugin.springsecurity.interceptUrlMap  = [
        [pattern: '/',               access: ['permitAll']],
        [pattern: '/favicon.ico',    access: ['permitAll']],
        [pattern: '/fonts/**',       access: ['permitAll']],
        [pattern: '/images/**',      access: ['permitAll']],
        [pattern: '/error',          access: ['permitAll']],
        [pattern: '/index',          access: ['permitAll']],
        [pattern: '/products',       access: ['permitAll']],
        [pattern: '/products/**',    access: ['permitAll']],
        [pattern: '/categories/**',  access: ['permitAll']],
        [pattern: '/brands/**',      access: ['permitAll']],
        [pattern: '/cart/**',        access: ['permitAll']],
        [pattern: '/login',          access: ['permitAll']],
        [pattern: '/login/**',       access: ['permitAll']],
        [pattern: '/logout',         access: ['permitAll']],
        [pattern: '/logout/**',      access: ['permitAll']],
        [pattern: '/register',       access: ['permitAll']],
        [pattern: '/orders/**',      access: 'isAuthenticated()'],
        [pattern: '/account/create', access: ['permitAll']],
        [pattern: '/assets/**',      access: ['permitAll']],
        [pattern: '/shutdown',       access: ['permitAll']]
]