@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS VIEW ENTITY'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_RPZ_VIEW_ENTITY_AGENCY
  as select from /dmo/agency
{
  key /dmo/agency.agency_id      as AgencyId,
      /dmo/agency.name           as Name,
      /dmo/agency.street         as Street,
      /dmo/agency.postal_code    as PostalCode,
      /dmo/agency.city           as City,
      /dmo/agency.country_code   as CountryCode,
      /dmo/agency.phone_number   as PhoneNumber,
      /dmo/agency.email_address  as EmailAddress,
      /dmo/agency.web_address    as WebAddress,
      concat( concat( agency_id, '-'), name ) as Contatenado,
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_RPZ_FUNC_ABAP'
      cast('' as abap.char(255)) as AbapName
      
}
