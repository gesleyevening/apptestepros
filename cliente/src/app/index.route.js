export function routerConfig ($stateProvider, $urlRouterProvider) {
  'ngInject';
  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'app/main/main.html',
      controller: 'MainController',
      controllerAs: 'main'
    }).state('propostes', {
      url: '/propostes',
      templateUrl: 'app/components/propostes.html',
      controller: 'PropostesController',
      controllerAs: 'propostes'
    });

  $urlRouterProvider.otherwise('/');
}
