<%-- 
    Document   : Palettes
    Created on : Aug 3, 2012, 6:26:56 PM
    Author     : olmozavala
--%>
<c:if test='${netcdf}'>
    <!-- Holds the optional palettes -->
    <div class="transDraggableWindow container-fluid" id="palettes-div">
        <div class="row defRowSpace">
            <div class="col-xs-10 invShadow title" > <fmt:message key="ncwms.newpal" /></div>
			
            <div class="col-xs-2 pull-right">
                <a class="btn btn-default btn-xs" href="#" onclick="displayOptionalPalettes();">
                    <span class="glyphicon glyphicon-remove"> </span> 
                </a>
            </div>
        </div>
        <div class="row defRowSpace">
            <div class="col-xs-12">
                <table id="palettesTable"></table>
            </div>
        </div>
        <div class="row doubleRowSpace">
            <div class="col-xs-4 col-xs-offset-3 ">
                <span class="buttonStyle " id="defaultColorRangeButton"
					  onclick="DefaultPalette();"> Default</span>
            </div>	
        </div>
    </div>
	
    <!-- Window with the color ranges -->
    <div class="transDraggableWindow  container-fluid" id="paletteWindowColorRange" >
        <div class="row">
			<!--Contains the applied pallete on the left of the window-->
            <div class="col-xs-2">
                <img class="optPaletteImg" id="imgPalette" src="${paletteUrl}" onclick="displayOptionalPalettes();" 
					 onmouseover="this.style.cursor = 'pointer';"
					 onmouseout="this.style.cursor = 'crosshair';"/>
            </div>
			<!--Contains the title of the window and the min max values--> 
            <div class="col-xs-10  ">
					<!--First row is the title and the close button-->
					<div class="row"> 
						<div class="col-xs-8 invShadow title ">
							<fmt:message key="ncwms.colorrange" />
						</div>
						<div class="col-xs-4">
							<div class="pull-right">
								<a class="btn btn-default btn-xs" href="#" onclick="showPalettes();">
									<span class="glyphicon glyphicon-remove"> </span> </a>
							</div>
						</div>
					</div>
					<!--Second row is the Max options-->
					<div class="row defRowSpace">
						<div class="col-xs-12 ">
							<span class="invShadow"> <fmt:message key="ncwms.colrange.max" /></span>
							<input id="maxPal" class="input-sm form-control inputSizePalettes " 
								   name="maxPal" type="text" size="5" onblur="UpdatePalette(mappalette);" 
								   onkeydown="if (event.keyCode == 13) UpdatePalette(mappalette);" />
							<a class="btn btn-default btn-xs" href="#" onclick="increaseMaxColorRange(1);">
								<span class="glyphicon glyphicon-plus "> </span> </a>
							<a class="btn btn-default btn-xs" href="#" onclick="increaseMaxColorRange(-1);">
								<span class="glyphicon glyphicon-minus "> </span> </a>
						</div>
					</div>
					<!-- Update and Auto buttons options-->
					<div class="row  defRowSpace">
						<div class="col-xs-12 defRowSpace">
							<span class="buttonStyle" id="updateColorRangeButton" onclick="UpdatePalette(mappalette);" > 
								<fmt:message key="ncwms.update" /></span> 
							<span class="buttonStyle" id="autoColorRangeButton"  onclick="setColorRangeFromMinMax();" >
								<fmt:message key="ncwms.auto" /></span>	
						</div>
					</div>
					<!--Min Options-->
					<div class="row  defRowSpace">
						<div class="col-xs-12 ">
							<span class="invShadow"> <fmt:message key="ncwms.colrange.min" /></span>
							<input  class="inputSizePalettes input-sm form-control" id="minPal" 
									name="minPal" type="text" size="5" 
									onblur="UpdatePalette(mappalette);"
									onkeydown="if (event.keyCode == 13) UpdatePalette(mappalette);" />
							<a class="btn btn-default btn-xs" href="#" onclick="decreaseMinColorRange(-1);">
								<span class="glyphicon glyphicon-plus "> </span> </a>
							<a class="btn btn-default btn-xs" href="#" onclick="decreaseMinColorRange(1);">
								<span class="glyphicon glyphicon-minus "> </span> </a>
							
						</div>
					</div><!-- Row -->
            </div><!-- col-xs-10 -->
        </div><!-- Row -->
    </div><!-- paletteWindowColorRange -->
	
</c:if>
