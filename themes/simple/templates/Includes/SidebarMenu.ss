<%--Include SidebarMenu recursively --%>

<% if LinkOrSection = section %>
	<% if $Children %>
		<% loop $Children %>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item">
                        <a href="$Link" class="$LinkingMode" title="Go to the $Title.XML page">
                            <span class="arrow">&rarr;</span>
                            <span class="text">$MenuTitle.XML</span>
                        </a>

                        <% if $Children %>
                            <ul>
                                <% include SidebarMenu %>
                            </ul>
                        <% end_if %>

                    </li>
                  <li class="breadcrumb-item active" aria-current="page">Library</li>
                </ol>
              </nav>
		<% end_loop %>
	<% end_if %>
<% end_if %>
