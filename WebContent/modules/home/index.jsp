<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- banner-bottom -->
	<div id="products" class="container-bg banner-bottom">	
	   <div class="container">
	       <div class="genders">
	          <s:iterator value="genders">
	          <a  data-href="${type}"><i class="fa fa-${type}" aria-hidden="true"></i></a>
	          </s:iterator>
	       </div>
		    <h3>Nos Articles</h3>
		    <s:iterator value="genders" var="gender">
		    <h4 id="${gender.type}" class="gender"><i class="fa fa-${gender.type}" aria-hidden="true"></i>Pour ${gender.label}</h4>
			<div  class="col-md-12 wthree_banner_bottom_right">
				<div class="tabs">
					<ul  class="nav nav-tabs">
					    <s:iterator value="#gender.categories" var="category">
						  <li><a><i class="fa fa-star-o" aria-hidden="true"></i>${category.name}</a></li>
						</s:iterator>
					</ul>
					<div class="tab-content">
					    <s:iterator value="#gender.categories" var="category">
						<div class="tab-pane">
							<div class="agile_ecommerce_tabs">
						<s:iterator value="#category.products" var="product">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img data-delay="true" data-src="templates/fashion/images/${product.image}" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a>${product.name}</a></h5>
									<div class="rating">
											<div class="rating-left">
												<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</div>
											<div class="rating-left">
												<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</div>
											<div class="rating-left">
												<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</div>
											<div class="rating-left">
												<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</div>
											<div class="rating-left">
												<a><i class="fa fa-star-o" aria-hidden="true"></i></a>
											</div>
											<div class="clearfix"> </div>
									</div>
									<div class="simpleCart_shelfItem">
										<p><span>${product.price} CFA</span> <i class="item_price">${product.price} CFA</i></p>
										<p><a class="item_add item_show"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Commander</a></p>
									</div>
								</div>
							</s:iterator>
							</div>
						</div>
						</s:iterator>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
			</s:iterator>
			</div>
			<div class="clearfix"> </div>
</div>
<div id="checkout-wizard">
		<div class="checkout-wizard-content">
			<h4 class="wizard-title">
				<i class="fa fa-shopping-cart" aria-hidden="true"></i>Confirmer l'achat
			</h4>
			<span title="fermer l'assistant" class="wizard-close">&nbsp;</span>
			<div class="checkout-wizard-steps">
				<form action="commerce/saveOrder" method="post">
					<section class="step" data-step-title="Identification">
						<fieldset>
							<div id="socialLogin">
								<p>Identifier vous rapidement avec les r�seaux sociaux ou
									avec votre compte client.</p>
								<div class="gigya">
								  <div id="loginDiv"></div>
								</div>
								<div id="or">OU</div>
								<div class="register">
									<a title="cr��r un compte"><i class="fa fa-user"
										aria-hidden="true"></i>cr��r un compte</a> <input name="email"
										placeholder="Email" type="text" required> <input
										name="password" placeholder="Mot de Passe" type="password"
										required>
									<div class="sign-up">
										<input type="button" value="Connexion" title="connexion">
										<a title="mot de passe oubli�"><i class="fa fa-key"
											aria-hidden="true"></i>mot de passe oubli�?</a>
									</div>
								</div>
							</div>
							<div id="profile">
								<p>
									Bienvenue <span id="name"></span>
								</p>
								<div>
									<img id="photo" src="" width="65px" height="65px" /> <input
										type="button" title="d�connexion" value="D�connexion"
										onclick="logoutFromGS()" />
								</div>
								<h5>Cliquer sur le bouton d�connexion pour changer
									d'utilisateur.</h5>
							</div>
						</fieldset>

					</section>
					<section class="step" data-step-title="Paiement">
						<fieldset>
							<p>Choisisser le mode de paiement le plus ad�quat pour r�gler
								votre commande.</p>
							<div>
								<span> <input name="payment" value="online" type="radio">
									<label>Payer en ligne</label> <select name="method">
										<option value="visa">Visa</option>
										<option value="mastercard">MasterCard</option>
										<option value="express">American Express</option>
										<option value="discover">Discover</option>
										<option value="paypal">PayPal</option>
										<option value="tigo">Tigo Cash</option>
										<option value="orange">Orange Money</option>
								</select>
								</span> <span><input name="payment" value="delivery"
									type="radio" checked><label>Payer � la
										livraison</label></span>
							</div>
						</fieldset>

					</section>
					<section class="step" data-step-title="Confirmation">
						<fieldset>
							<div class="shipping-address">
								<h4>
									<i class="fa fa-motorcycle" aria-hidden="true"></i><b>Adresse
										de livraison</b>
								</h4>
								<h5>
									<span><i class="fa fa-map-marker" aria-hidden="true"></i>Nord
										Foire, VDN</span> <span>derri�re la Mosqu�e</span>
								</h5>
								<h5>
									<span><i class="fa fa-map-marker" aria-hidden="true"></i>R�gion
										: </span>Dakar
								</h5>
								<h5>
									<span><i class="fa fa-map-marker" aria-hidden="true"></i>Zone
										: </span>Fann
								</h5>
								<h5>
									<span><i class="fa fa-mobile" aria-hidden="true"></i>T�l�phone
										: </span>775593264
								</h5>
								<h5>
									<span><i class="fa fa-envelope" aria-hidden="true"></i>email
										: </span>lamine.ba@thinktech.sn
								</h5>
								<h5>
									<a>[modifier]</a>
								</h5>
							</div>
							<div class="shopping-payment">
								<div class="payment visa-payment">
									<h4>
										<i class="fa fa-cc-visa" aria-hidden="true"></i><b>Paiement
											Visa</b>
									</h4>
									<ol>
										<li>Cliquer sur terminer ou sur le bouton Visa Checkout.</li>
										<li>Effectuer le paiement de votre commande.</li>
										<li>R�ception SMS de la confirmation de paiement.</li>
									</ol>
									<img alt="Visa Checkout" class="v-button img-responsive" role="button"
										data-delay="true" data-src="https://sandbox.secure.checkout.visa.com/wallet-services-web/xo/button.png" />
								</div>
								<div class="payment mastercard-payment">
									<h4>
										<i class="fa fa-cc-mastercard" aria-hidden="true"></i><b>Paiement
											MasterCard</b>
									</h4>
									<ol>
										<li>Cliquer sur le bouton Visa Checkout.</li>
										<li>Effectuer le paiement de votre commande.</li>
										<li>R�ception SMS de la confirmation de paiement.</li>
									</ol>
									<img alt="Visa Checkout" class="v-button img-responsive" role="button"
										data-delay="true" data-src="https://sandbox.secure.checkout.visa.com/wallet-services-web/xo/button.png" />
								</div>
								<div class="payment express-payment">
									<h4>
										<i class="fa fa-credit-card" aria-hidden="true"></i><b>Paiement
											American Express</b>
									</h4>
									<ol>
										<li>Cliquer sur le bouton Visa Checkout.</li>
										<li>Effectuer le paiement de votre commande.</li>
										<li>R�ception SMS de la confirmation de paiement.</li>
									</ol>
									<img alt="Visa Checkout" class="v-button img-responsive" role="button"
										data-delay="true" data-src="https://sandbox.secure.checkout.visa.com/wallet-services-web/xo/button.png" />
								</div>
								<div class="payment discover-payment">
									<h4>
										<i class="fa fa-cc-discover" aria-hidden="true"></i><b>Paiement
											Discover</b>
									</h4>
									<ol>
										<li>Cliquer sur le bouton Visa Checkout.</li>
										<li>Effectuer le paiement de votre commande.</li>
										<li>R�ception SMS de la confirmation de paiement.</li>
									</ol>
									<img alt="Visa Checkout" class="v-button img-responsive" role="button"
										data-delay="true" data-src="https://sandbox.secure.checkout.visa.com/wallet-services-web/xo/button.png" />
								</div>
								<div class="payment orange-payment">
									<h4>
										<i class="fa fa-mobile" aria-hidden="true"></i><b>Paiement
											Orange Money</b>
									</h4>
									<ol>
										<li>Composer le #144#391#.</li>
										<li>Choisisser l'option 1-G�n�ration d'un code.</li>
										<li>Entrer votre code secret Orange Money.</li>
										<li>Conserver le code re�u par SMS pour r�gler votre
											commande.</li>
									</ol>
								</div>
								<div class="payment tigo-payment">
									<h4>
										<i class="fa fa-mobile" aria-hidden="true"></i><b>Paiement
											Tigo Cash</b>
									</h4>
									<ol>
										<li>Entrer votre num�ro de t�l�phone Tigo.</li>
										<li>R�ception SMS de la requ�te de paiement.</li>
										<li>Taper #150#, puis entrer le code PIN Tigo Cash.</li>
										<li>R�ception SMS de la confirmation de paiement.</li>
									</ol>
								</div>
								<div class="payment paypal-payment">
									<h4>
										<i class="fa fa-paypal" aria-hidden="true"></i><b>Paiement
											PayPal</b>
									</h4>
									<ol>

									</ol>
								</div>
								<div class="payment delivery-payment">
									<h4>
										<i class="fa fa-money" aria-hidden="true"></i><b>Paiement
											� la livraison</b>
									</h4>
									<h6>Payer en toute s�curit� avec le paiement � la
										livraison! Ce mode de paiement vous permet de r�gler le
										montant de votre commande en esp�ces, plus les frais de
										livraison.</h6>
								</div>
							</div>
								<div class="shopping-amount">
									<span><span>Commande : </span><span><b>30 000 CFA</b></span></span> 
									<span><span>Frais de livraison : </span><span><b>1 500 CFA</b></span></span> 
									<span><span>Total : </span><span><b>31 500 CFA</b></span></span>
								</div>
						</fieldset>
					</section>
				</form>
			</div>
		</div>
</div>