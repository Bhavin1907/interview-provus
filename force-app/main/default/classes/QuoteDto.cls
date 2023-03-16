/**
 * @description       : 
 * @author            : Bhavin
 * @group             : 
 * @last modified on  : 03-16-2023
 * @last modified by  : Bhavin 
 * Modifications Log
 * Ver   Date         Author   Modification
 * 1.0   03-16-2023   Bhavin   Initial Version
**/
public with sharing class QuoteDto extends BaseDto {
  @AuraEnabled
  public Date endDate {get; set;}
  @AuraEnabled
  public Date startDate {get; set;}
  

  public QuoteDto() {
  }

  public QuoteDto(Quote__c quote) {
    super(quote);
    this.endDate = quote.EndDate__c;
    this.startDate = quote.Start_date__c;
    this.name = quote.name;
  }

  public override SObject refreshSo() {
    return null;
  }
}
