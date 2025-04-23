@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS COMPOSTA DE VENDAS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_RPZ_VENDAS
  as select from ZR_RPZ_VENDAS
  association [1..*] to ZR_RPZ_VENDAS_IT as _Item on $projection.VendaId = _Item.VendaId
  
{
  key VendaId,
      DataVenda,
      Vendedor,
      _Item
}
