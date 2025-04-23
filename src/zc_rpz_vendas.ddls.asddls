@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS CONSUMO APP VENDAS'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_RPZ_VENDAS
  as projection on ZI_RPZ_VENDAS
{
  key VendaId,
      DataVenda,
      Vendedor,
      /* Associations */
      _Item
}
