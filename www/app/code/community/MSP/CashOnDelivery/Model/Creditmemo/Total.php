<?php
/**
 * IDEALIAGroup srl
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to info@idealiagroup.com so we can send you a copy immediately.
 *
 * @category   MSP
 * @package    MSP_CashOnDelivery
 * @copyright  Copyright (c) 2013 IDEALIAGroup srl (http://www.idealiagroup.com)
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

class MSP_CashOnDelivery_Model_Creditmemo_Total extends Mage_Sales_Model_Order_Creditmemo_Total_Abstract
{
	public function collect(Mage_Sales_Model_Order_Creditmemo $invoice)
	{
		$order = $invoice->getOrder();

		$amount = $order->getMspCashondelivery();
		$baseAmount = $order->getMspBaseCashondelivery();
				
		$invoice->setGrandTotal($invoice->getGrandTotal() + $amount);
		$invoice->setBaseGrandTotal($invoice->getBaseGrandTotal() + $baseAmount);
		
		$invoice->setMspCashondelivery($amount);
		$invoice->setMspBaseCashondelivery($baseAmount);
		
		return $this;
	}
}
