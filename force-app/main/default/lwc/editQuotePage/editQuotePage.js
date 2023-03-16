/*
 * Provus Services Quoting
 * Copyright (c) 2023 Provus Inc. All rights reserved.
 */

import { LightningElement, api } from "lwc";

export default class EditQuotePage extends LightningElement {
  @api recordId;
  showeditform = false;
  adjustQuoteClicked(event){
     this.showeditform = event.detail;
   }
}
