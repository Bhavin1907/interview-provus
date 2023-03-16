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
public with sharing class EditQuoteController {
    public EditQuoteController() {

    }

    @AuraEnabled
    public static QuoteDto getQuoteDetails(Id recordId){
        try {
            Quote__c quoteObj = [select id,Name,Start_Date__c, EndDate__c from Quote__c where id = :recordId];
            QuoteDto objDto = new QuoteDto(quoteObj);
            return objDto;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static void saveQuote(Id quoteId,QuoteDto objDto, Date startDate, Date endDate){
        try {
            system.debug('objDto'+objDto);
            Quote__c quoteObj = new Quote__c();
            quoteObj.Id = quoteId;
            quoteObj.Start_Date__c = startDate;
            quoteObj.EndDate__c = endDate;
            update quoteObj;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}