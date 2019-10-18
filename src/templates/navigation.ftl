

 <nav class="navbar encabezado">
            <div class="container">
            <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${site_default_url}"><img class="imglogo" width="100px;" src="${images_folder}/logo.png" alt="logo"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul id="ulnav" class="nav navbar-nav navbar-right">
                <#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_attr_selected = "aria-selected='true'"
					nav_item_css_class = "selected"
				/>
			</#if>



 			<li ${nav_item_attr_selected} class="navpage active"><a href="${nav_item.getURL()}">${nav_item.getName()}</a></li>




                    </#list>
                    <#if !is_signed_in>
		<!--	<li><a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a></li>-->
			<#else>
	             <@liferay.user_personal_bar />
	 		</#if>

                </ul>
            </div>
          </div>
        </nav>
