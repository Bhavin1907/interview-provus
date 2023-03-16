/*
 * Provus Services Quoting
 * Copyright (c) 2023 Provus Inc. All rights reserved.
 */

import { LightningElement } from "lwc";
export default class QuoteTotalSummary extends LightningElement {
    showeditform = false;
     onAdjustQuoteClicked(){
        this.showeditform = !this.showeditform;
         const selectedEvent = new CustomEvent('adjustquote', {
            detail : this.showeditform
        });
        //dispatching the custom event
        this.dispatchEvent(selectedEvent);
     }
}
