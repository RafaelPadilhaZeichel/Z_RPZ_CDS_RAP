@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIEW ENTITY BASIC ITEMS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_RPZ_VENDAS_IT
  as select from ztrpzvendasit
{
  key venda_id   as VendaId,
  key venda_item as VendaItem,
      product_id as ProductId,
      quantidade as Quantidade
}
