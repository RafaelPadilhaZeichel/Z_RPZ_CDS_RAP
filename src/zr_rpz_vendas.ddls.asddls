@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIEW ENTITY BASIC'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_RPZ_VENDAS
  as select from ztrpzvendas
{
  key venda_id   as VendaId,
      data_venda as DataVenda,
      vendedor   as Vendedor
}
