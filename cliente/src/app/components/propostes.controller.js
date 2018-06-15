export class PropostesController {
  constructor ($scope, Proposte) {
    'ngInject';
    
    Proposte.query().then(propostes => $scope.propostes = propostes);
  }
}