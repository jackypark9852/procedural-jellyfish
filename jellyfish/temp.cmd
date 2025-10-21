# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node obj (/obj)
opcf obj

# Node Jellyfish (Object/geo)
opadd -e -n geo Jellyfish
oplocate -x -1.64706 -y 0.97328300000000001 Jellyfish
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' Jellyfish
opset -S on Jellyfish
opparm -V 21.0.440 Jellyfish stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock Jellyfish -*
chautoscope Jellyfish -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off Jellyfish
opexprlanguage -s hscript Jellyfish
opuserdata -n '___Version___' -v '21.0.440' Jellyfish
opuserdata -n 'wirestyle' -v 'rounded' Jellyfish
opcf Jellyfish

# Node bind_tip (Sop/bend)
opadd -e -n bend bind_tip
oplocate -x -0.52705299999999999 -y -0.94537000000000004 bind_tip
opspareds "" bind_tip
opparm bind_tip  taperprofile ( 1 )
chblockbegin
chadd -t 0 0 bind_tip bend
chkey -t 0 -v -45 -m 0 -a 0 -A 0 -T a  -F 'ch("../CONTROLLER/bendTip")' bind_tip/bend
chadd -t 0 0 bind_tip originy
chkey -t 0 -v 0.20000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("length")2' bind_tip/originy
chblockend
opparm bind_tip group ( "" ) grouptype ( guess ) mask ( bend_attrib ) maskmode ( maskoff ) folder1 ( 0 0 ) dodeform ( on ) limit_deformation ( on ) symmetricdeformation ( off ) enablebend ( on ) bendfolder ( 1 ) bendmode ( angle ) bend ( bend ) bendscalemode_angle ( none ) goaldir ( 0 0 1 ) bendscalemode_dir ( none ) bend_attrib ( bend_attrib ) enabletwist ( off ) twistfolder ( 0 ) twist ( 0 ) twistscalemode ( none ) twist_attrib ( twist_attrib ) continuoustwist ( off ) enablelengthscale ( off ) lengthscalefolder ( 0 ) preservevolume ( off ) lengthscale ( 1 ) lengthscalescalemode ( none ) lengthscale_attrib ( lengthscale_attrib ) enabletaper ( off ) taperfolder ( 0 ) taperaxes ( 3 ) tapermode ( linear ) taper ( 1 ) taperscalemode ( none ) taper_attrib ( taper_attrib ) squish ( 1 ) squishscalemode ( none ) squishpivot ( 0.5 ) squish_attrib ( squish_attrib ) enableramp ( off ) taperprofile ( 1 ) folder0 ( 1 ) upvectorcontrol ( custom ) up ( 0 1 0 ) upangle ( 0 ) setcaptureregion ( 0 ) origin ( 0 originy 0 ) dir ( 0 -1 0 ) length ( 0.2 ) enableoutattrib ( off ) outattrib ( capture ) userest ( off ) attribs ( * ) updateaffectednmls ( off ) vlength ( on ) derivative_stepsize ( 0.01 ) taperprofile1pos ( 0 ) taperprofile1value ( 1 ) taperprofile1interp ( linear )
chlock bind_tip -*
chautoscope bind_tip -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bind_tip
opexprlanguage -s hscript bind_tip
opuserdata -n '___Version___' -v '' bind_tip
opuserdata -n '___toolcount___' -v '4' bind_tip
opuserdata -n '___toolid___' -v 'geometry_lineartaper' bind_tip

# Node bend_main (Sop/bend)
opadd -e -n bend bend_main
oplocate -x -0.52705299999999999 -y -1.9312400000000001 bend_main
opspareds "" bend_main
opparm bend_main  taperprofile ( 1 )
chblockbegin
chadd -t 0 0 bend_main bend
chkey -t 0 -v 86 -m 0 -a 0 -A 0 -T a  -F 'ch("../CONTROLLER/bendMain")' bend_main/bend
chblockend
opparm bend_main group ( "" ) grouptype ( guess ) mask ( bend_attrib ) maskmode ( maskoff ) folder1 ( 0 0 ) dodeform ( on ) limit_deformation ( on ) symmetricdeformation ( off ) enablebend ( on ) bendfolder ( 1 ) bendmode ( angle ) bend ( bend ) bendscalemode_angle ( none ) goaldir ( 0 0 1 ) bendscalemode_dir ( none ) bend_attrib ( bend_attrib ) enabletwist ( off ) twistfolder ( 0 ) twist ( 0 ) twistscalemode ( none ) twist_attrib ( twist_attrib ) continuoustwist ( off ) enablelengthscale ( off ) lengthscalefolder ( 0 ) preservevolume ( off ) lengthscale ( 1 ) lengthscalescalemode ( none ) lengthscale_attrib ( lengthscale_attrib ) enabletaper ( off ) taperfolder ( 0 ) taperaxes ( 3 ) tapermode ( linear ) taper ( 1 ) taperscalemode ( none ) taper_attrib ( taper_attrib ) squish ( 1 ) squishscalemode ( none ) squishpivot ( 0.5 ) squish_attrib ( squish_attrib ) enableramp ( off ) taperprofile ( 1 ) folder0 ( 1 ) upvectorcontrol ( custom ) up ( 0 1 0 ) upangle ( 0 ) setcaptureregion ( 0 ) origin ( 0 0 0 ) dir ( 0 1 0 ) length ( 1 ) enableoutattrib ( off ) outattrib ( capture ) userest ( off ) attribs ( * ) updateaffectednmls ( off ) vlength ( on ) derivative_stepsize ( 0.01 ) taperprofile1pos ( 0 ) taperprofile1value ( 1 ) taperprofile1interp ( linear )
chlock bend_main -*
chautoscope bend_main -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bend_main
opexprlanguage -s hscript bend_main
opuserdata -n '___Version___' -v '' bend_main
opuserdata -n '___toolcount___' -v '4' bend_main
opuserdata -n '___toolid___' -v 'geometry_lineartaper' bend_main

# Node mountain1 (Sop/attribnoise::2.0)
opadd -e -n attribnoise::2.0 mountain1
oplocate -x -0.52705299999999999 -y -5.7405499999999998 mountain1
opspareds "" mountain1
opparm mountain1  remapramp ( 2 )
opparm mountain1 folder0 ( 0 ) group ( "" ) doblend ( off ) blendweight ( 1 ) blendmode ( value ) blendattrib ( mask ) attribtype ( vec ) attribs ( P ) componentscope ( 111 ) class ( point ) displace ( on ) displaceattrib ( N ) folder1 ( 1 ) operation ( add ) noiserange ( zcentered ) amplitude ( 0.18 ) amplitudev ( 1 ) amplitudetype ( BUTTONS_decompose_transforms ) amplitudescalev ( 1 1 1 ) rangemin ( 0 ) rangeminv ( 0 ) rangemintype ( BUTTONS_decompose_transforms ) rangeminscalev ( 0 0 0 ) rangemax ( 1 ) rangemaxv ( 1 ) rangemaxtype ( BUTTONS_decompose_transforms ) rangemaxscalev ( 1 1 1 ) midvalue ( 0 ) midvaluev ( 0 ) midvaluetype ( BUTTONS_decompose_transforms ) midvaluescalev ( 1 1 1 ) rangevalue ( 1 ) rangevaluev ( 1 ) rangevaluetype ( BUTTONS_decompose_transforms ) rangevaluescalev ( 1 1 1 ) outputraw ( on ) enableremap ( off ) remapramp ( 2 ) folder3 ( 0 ) dobias ( off ) bias ( 0.5 ) dogain ( off ) gain ( 0.5 ) dogamma ( off ) gamma ( 2.2 ) docontrast ( off ) contrast ( 0 ) folder7 ( 1 ) basis ( simplex ) locationattrib ( P ) elementsize ( 1.39 ) elementsizetype ( BUTTONS_decompose_transforms ) elementscale ( 1 1 1 ) offset ( 0 ) offsettype ( BUTTONS_decompose_transforms ) offsetv ( 0 0 0 ) usenoiseexpression ( off ) noiseexpression ( '// Parameters to modify:\n// Location Attribute - pos\n// Element Size - elementsize\n// Offset - offset\n\n' ) vex_cwdpath ( . ) folder6 ( 0 ) animated ( off ) pulseduration ( 1 ) folder4 ( 1 ) fractal ( hmfT ) oct ( 8.33 ) lac ( 1.98 ) rough ( 0 ) folder2 ( 0 ) disp ( 0 ) dispesize ( 1 ) gflow ( 0 ) flowrot ( 0 ) accuml ( off ) accumg ( off ) distort ( 1 ) stretch ( 1 1 1 ) dodroop ( off ) droop ( 1 ) droopdir ( 1 0 0 ) folder8 ( 0 ) doworleydetails ( off ) worleyblend ( 1 ) worleyerosion ( 0.5 ) worleyelementsizescale ( 2 ) folder5 ( 0 ) doclampmin ( off ) clampminvalue ( 0 ) doclampmax ( off ) clampmaxvalue ( 1 ) normalize ( off ) updatenmls ( on ) remapramp1pos ( 0 ) remapramp1value ( 0 ) remapramp1interp ( linear ) remapramp2pos ( 1 ) remapramp2value ( 1 ) remapramp2interp ( linear )
chlock mountain1 -*
chautoscope mountain1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mountain1
opexprlanguage -s hscript mountain1
opuserdata -n '___Version___' -v '' mountain1

# Node twist1 (Sop/bend)
opadd -e -n bend twist1
oplocate -x 5.5308400000000004 -y -1.6949700000000001 twist1
opspareds "" twist1
opparm twist1  taperprofile ( 1 )
opparm twist1 group ( "" ) grouptype ( guess ) mask ( bend_attrib ) maskmode ( maskoff ) folder1 ( 0 0 ) dodeform ( on ) limit_deformation ( on ) symmetricdeformation ( off ) enablebend ( off ) bendfolder ( 0 ) bendmode ( angle ) bend ( 0 ) bendscalemode_angle ( none ) goaldir ( 0 0 1 ) bendscalemode_dir ( none ) bend_attrib ( bend_attrib ) enabletwist ( on ) twistfolder ( 1 ) twist ( 1800 ) twistscalemode ( none ) twist_attrib ( twist_attrib ) continuoustwist ( off ) enablelengthscale ( off ) lengthscalefolder ( 0 ) preservevolume ( off ) lengthscale ( 1 ) lengthscalescalemode ( none ) lengthscale_attrib ( lengthscale_attrib ) enabletaper ( off ) taperfolder ( 0 ) taperaxes ( 3 ) tapermode ( linear ) taper ( 1 ) taperscalemode ( none ) taper_attrib ( taper_attrib ) squish ( 1 ) squishscalemode ( none ) squishpivot ( 0.5 ) squish_attrib ( squish_attrib ) enableramp ( off ) taperprofile ( 1 ) folder0 ( 1 ) upvectorcontrol ( custom ) up ( 0 1 0 ) upangle ( 0 ) setcaptureregion ( 0 ) origin ( 0 -0.5 0 ) dir ( 0 1 0 ) length ( 1 ) enableoutattrib ( off ) outattrib ( capture ) userest ( off ) attribs ( * ) updateaffectednmls ( off ) vlength ( on ) derivative_stepsize ( 0.01 ) taperprofile1pos ( 0 ) taperprofile1value ( 1 ) taperprofile1interp ( linear )
chlock twist1 -*
chautoscope twist1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off twist1
opexprlanguage -s hscript twist1
opuserdata -n '___Version___' -v '' twist1
opuserdata -n '___toolcount___' -v '4' twist1
opuserdata -n '___toolid___' -v 'geometry_lineartaper' twist1

# Node vellumconstraints1 (Sop/vellumconstraints)
opadd -e -n vellumconstraints vellumconstraints1
oplocate -x 5.8543200000000004 -y -14.702299999999999 vellumconstraints1
opspareds "" vellumconstraints1
opparm -V 2 vellumconstraints1 constrainttype ( cloth ) stretchtype ( distance ) bendtype ( distance ) preservevol ( off ) linear ( normarap ) folder8 ( 0 ) grouptype ( prims ) group ( "" ) triangulation ( alternating ) sepparm ( ) domass ( off ) mass ( 0.1 ) density ( 0.1 ) scaledensitymode ( none ) scaledensityattrib ( density ) dothickness ( off ) thickness ( 0.01 ) thicknessscale ( 0.25 ) scalethicknessmode ( none ) scalethicknessattrib ( thickness ) vizthickness ( off ) sepparm2 ( ) piecemode ( connectivity ) neighbordist ( 2 ) pieceattrib ( class ) dolayer ( off ) layer ( 0 ) computeorient ( on ) orientframe ( 1 ) showguide ( on ) folder7 ( 0 ) targetgrouptype ( prims ) targetgroup ( "" ) targetpath ( "" ) doattachframe ( off ) attachframe ( 1 ) folder9 ( 0 ) dragnormal ( 10 ) dragtangent ( 0.1 ) folder3 ( 0 ) pingroup ( "" ) pintype ( hard ) pinrotation ( same ) matchanimation ( off ) folder2 ( 0 ) useclosestpt ( on ) useclosestprim ( on ) maxdistcheck ( off ) maxdist ( 0 ) dosliding ( off ) slidingrate ( 1 ) slidingscalemode ( none ) slidingattrib ( slidingscale ) folder6 ( 0 ) glue_usecluster ( off ) glue_clusterattrib ( cluster ) glue_minradius ( 0 ) glue_radius ( 0.1 ) glue_numpt ( 10 ) glue_searchpref ( nearest ) glue_constraintsperpt ( 1 ) glue_detach_chance ( 0 ) glue_point_chance ( 0 ) glue_seed ( 0 ) folder10 ( 0 ) strut_maxlen ( 100 ) strut_usedirattrib ( off ) strut_dirattrib ( N ) strut_invertnormal ( off ) strut_testnormals ( on ) strut_jitter ( 0.1 ) strut_constraintsperpt ( 1 ) strut_point_chance ( 0 ) strut_seed ( 0 ) strut_rayoff ( 0.01 ) folder0 ( 0 ) stretchstiffness ( 100000 ) stretchstiffnessexp ( 10 ) stretchstiffnessscalemode ( none ) stretchstiffnessattrib ( stretchstiffness ) stretchstiffnessscale ( 1 ) stretchdampingratio ( 0.01 ) stretchdampingscalemode ( none ) stretchdampingattrib ( stretchdamping ) stretchdampingscale ( 1 ) stretchrestscale ( 1 ) docompress ( off ) compressstiffness ( 1 ) compressstiffnessexp ( 3 ) compressstiffnessscalemode ( none ) compressstiffnessattrib ( compressstiffness ) compressstiffnessscale ( 1 ) dotangent ( off ) tangentstiffness ( 1 ) tangentstiffnessexp ( 3 ) dostretchstiffnessdropoff ( off ) stretchstiffnessdropoff ( 0 ) stretchstiffnessdropoffdir ( decreasing ) dostretchstiffnessdropoffmin ( off ) stretchstiffnessdropoffmin ( 0 ) stretchanisotropy ( off ) folder12 ( 0 ) stretchwarpscale ( 1 ) stretchweftscale ( 1 ) stretchshearscale ( 1 ) materialuv ( materialuv ) dostretchvelblend ( off ) stretchvelblend ( 0.1 ) stretchvelblendscalemode ( none ) stretchvelblendattrib ( "" ) stretchplasticity ( off ) folder4 ( 0 ) stretchplasticthreshold ( 0.1 ) stretchplasticthresholdscalemode ( none ) stretchplasticthresholdattrib ( stretchplasticthreshold ) stretchplasticthresholdscale ( 1 ) stretchplasticthresholdratio ( on ) stretchplasticrate ( 1 ) stretchplasticratescalemode ( none ) stretchplasticrateattrib ( stretchplasticrate ) stretchplasticratescale ( 1 ) stretchplastichardening ( 1 ) stretchplastichardeningscalemode ( none ) stretchplastichardeningattrib ( stretchplastichardening ) stretchplastichardeningscale ( 1 ) dostretchgrp ( off ) stretchgrp ( stretch ) keepuniquestretch ( on ) folder1 ( 0 ) bendweld ( on ) bendcopystiffness ( on ) bendstiffness ( 1 ) bendstiffnessexp ( -2 ) bendstiffnessscalemode ( none ) bendstiffnessattrib ( bendstiffness ) bendstiffnessscale ( 1 ) benddampingratio ( 0.01 ) benddampingscalemode ( none ) benddampingattrib ( benddamping ) benddampingscale ( 1 ) bendrestscale ( 1 ) dobendstiffnessdropoff ( off ) bendstiffnessdropoff ( 0 ) bendstiffnessdropoffdir ( increasing ) dobendstiffnessdropoffmin ( off ) bendstiffnessdropoffmin ( 0 ) domaxbranchangle ( off ) maxbranchangle ( 10 ) bendplasticity ( off ) folder5 ( 0 ) bendplasticthreshold ( 10 ) bendplasticthresholdscalemode ( none ) bendplasticthresholdattrib ( bendplasticthreshold ) bendplasticthresholdscale ( 1 ) bendplasticrate ( 1 ) bendplasticratescalemode ( none ) bendplasticrateattrib ( bendplasticrate ) bendplasticratescale ( 1 ) bendplastichardening ( 1 ) bendplastichardeningscalemode ( none ) bendplastichardeningattrib ( bendplastichardening ) bendplastichardeningscale ( 1 ) dobendgrp ( off ) bendgrp ( bend ) keepuniquebend ( on ) folder11 ( 0 ) dobreaking ( off ) breakthreshold ( 0.1 ) breakscalemode ( none ) breakscaleattrib ( breakthresholdscale ) breakscale ( 1 ) breaktypeall ( stretchstress ) breaktypestretch ( stretchstress ) folder13 ( 0 ) attribpromote ( mean ) tag ( '$OS' ) statictopology ( off )
chlock vellumconstraints1 -*
chautoscope vellumconstraints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vellumconstraints1
opexprlanguage -s hscript vellumconstraints1
opuserdata -n '___Version___' -v '2' vellumconstraints1

# Node vellumsolver1 (Sop/vellumsolver)
opadd -e -n vellumsolver vellumsolver1
oplocate -x 5.8543200000000004 -y -16.702300000000001 vellumsolver1
opspareds "" vellumsolver1
opparm vellumsolver1  windshadow_maskfalloff ( 2 )
opparm -V 1 vellumsolver1 resimulate ( 0 ) startframe ( -200 ) folder0_1 ( 1 1 1 1 1 ) solvermode ( full ) timescale ( 1 ) dosubstep ( off ) substep ( 1 ) substeps ( 1 ) niter ( 100 ) smoothiter ( 10 ) folder4 ( 0 ) enablecollisions ( on ) doselfcollisions ( on ) useground ( off ) groundpos ( 0 0 0 ) collisionsiter ( 10 ) postcollisioniter ( 3 ) resolveall ( on ) resolveallmax ( 10 ) layershock ( 4 ) gravity ( 0 -0.3 0 ) dowind ( on ) wind ( 0 0 0 ) windspeed ( 1 ) winddrag ( 0.1 ) veldamping ( 0 ) folder12 ( 0 ) windshadow_type ( none ) windshadow_doexternal ( on ) windshadow_externalmask ( 1 ) windshadow_doself ( off ) windshadow_selfmask ( 1 ) windshadow_maxdistance ( 1 ) windshadow_raybias ( 0.0001 ) windshadow_coneangle ( 0 ) windshadow_samples ( 8 ) windshadow_maskfalloff ( 2 ) windshadow_doblur ( off ) windshadow_blur_iterations ( 4 ) windshadow_blur_influencetype ( connectivity ) windshadow_blur_proxrad ( 0.5 ) windshadow_blur_maxneigh ( 20 ) folder2 ( 0 ) static_threshold ( 0.5 ) dynamic_scale ( 0.1 ) sepparm ( ) friction ( on ) selffriction ( on ) static_sdfscale ( 1 ) dynamic_sdfscale ( 1 ) cacheenabled ( on ) cachemaxsize ( 5000 ) autoresim ( on ) simulationtype ( dynamic ) quasistaticframes ( 10 ) zerodynamics ( off ) targetmethod ( first ) targetpath ( "" ) integration ( secondorder ) thickness ( 0.01 ) folder10 ( 0 ) dosecondary ( off ) secondarygroup ( '@type==bend' ) secondaryfrequency ( 0.25 ) folder7 ( 0 ) domultipass ( off ) maxmultipass ( 10 ) disablestretchratio ( 0.5 ) folder5 ( 0 ) domaxaccel ( on ) maxaccel ( 30 ) accelfallback ( on ) limitaccel ( off ) limitdisplace ( off ) disablebrokenwelds ( off ) normalizestress ( on ) slidingmethod ( closest ) folder8 ( 0 ) doautosleep ( off ) sleep_velocitythreshold ( 0.01 ) sleep_delay ( 0.1 ) folder9 ( 0 ) grain_searchscale ( 2.5 ) grain_maxneighbor ( 20 ) grain_uniformradius ( on ) ignorepiece ( on ) repulsionweight ( 1 ) attractionweight ( 0 ) folder11 ( 0 ) fluid_searchscale ( 4 ) viscosity ( 5 ) collisionviscosity ( 0 ) viscositysolver ( implicit ) tol ( 0.001 ) maxviscosityiterations ( 500 ) surfacetension ( 0.0001 ) adhesion ( 0 ) dosort ( off ) sortinterval ( 20 ) folder6 ( 0 ) oclgraphcolor ( on ) oclneighborsearch ( on ) folder26_3 ( 0 ) savecheckpoints ( off ) checkpoint_basename ( '$HIPNAME.$OS' ) checkpoint_basedir ( '$HIP/geo' ) checkpoint_openbasedir ( 0 ) checkpoint_enableversion ( on ) checkpoint_version ( 1 ) labelparm8 ( '`chs("checkpoint_basedir")``ifs(ch("checkpoint_enableversion"), "/v"+chs("checkpoint_version"), "")`/`chs("checkpoint_basename")``ifs(ch("checkpoint_enableversion"), "_v"+chs("checkpoint_version"), "")`.\\$SF.sim' ) sepparm4 ( ) checkpoint_explicitcachensteps ( 0 ) checkpoint_explicitcachespacing ( 1 ) showcollision ( on ) showguide ( on ) folder0 ( 0 ) guide_showthickness ( off ) guide_thicknesscolor ( 0 0.9 0 ) guide_showthicknessextrude ( off ) guide_showfailedself ( off ) guide_failedself ( 0.9 0 0 ) guide_showfailedexternal ( off ) guide_failedexternal ( 0.9 0.45 0 ) guide_showwelds ( off ) guide_weldcolor ( 0 0.9 0.45 ) guide_colvisscale ( 1 ) folder1 ( 0 ) guide_usegroup ( off ) guide_constraintgroup ( "" ) guide_showpin ( off ) guide_pincolor ( 0.25 0 0.5 ) guide_showstitch ( off ) guide_stitchcolor ( 0.9 0.9 0 ) guide_showattach ( off ) guide_attachcolor ( 0 0.45 0.9 ) guide_constraintvisradius ( 0.01 ) folder3 ( 0 ) vis_mode ( none ) vis_displaygeo ( on ) vis_maxstretchstress ( 0.01 ) vis_maxbendstress ( 0.001 ) vis_maxstretchdistance ( 0.01 ) vis_maxstretchratio ( 0.1 ) vis_maxbendangle ( 5 ) vis_maxstretchplasticflow ( 1 ) vis_maxbendplasticflow ( 10 ) vis_maxvolumestress ( 0.01 ) vis_maxvolumedistance ( 0.0001 ) vis_maxvolumeratio ( 0.1 ) windshadow_maskfalloff1pos ( 0.8500000238418579 ) windshadow_maskfalloff1value ( 1 ) windshadow_maskfalloff1interp ( linear ) windshadow_maskfalloff2pos ( 0.9973856210708618 ) windshadow_maskfalloff2value ( 0 ) windshadow_maskfalloff2interp ( linear )
chlock vellumsolver1 -*
chautoscope vellumsolver1 -* +adhesion
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vellumsolver1
opexprlanguage -s hscript vellumsolver1
opuserdata -n '___Version___' -v '1' vellumsolver1

# Node vellumconstraints2 (Sop/vellumconstraints)
opadd -e -n vellumconstraints vellumconstraints2
oplocate -x 5.8543200000000004 -y -15.702299999999999 vellumconstraints2
opspareds "" vellumconstraints2
opparm -V 2 vellumconstraints2 constrainttype ( pin ) stretchtype ( distance ) bendtype ( angle ) preservevol ( off ) linear ( normarap ) folder8 ( 0 ) grouptype ( points ) group ( ptsToPin ) triangulation ( alternating ) sepparm ( ) domass ( off ) mass ( 0.1 ) density ( 0.1 ) scaledensitymode ( none ) scaledensityattrib ( density ) dothickness ( off ) thickness ( 0.01 ) thicknessscale ( 0.25 ) scalethicknessmode ( none ) scalethicknessattrib ( thickness ) vizthickness ( off ) sepparm2 ( ) piecemode ( connectivity ) neighbordist ( 2 ) pieceattrib ( class ) dolayer ( off ) layer ( 0 ) computeorient ( on ) orientframe ( 1 ) showguide ( on ) folder7 ( 0 ) targetgrouptype ( prims ) targetgroup ( "" ) targetpath ( "" ) doattachframe ( off ) attachframe ( 1 ) folder9 ( 0 ) dragnormal ( 10 ) dragtangent ( 0.1 ) folder3 ( 0 ) pingroup ( "" ) pintype ( hard ) pinrotation ( same ) matchanimation ( on ) folder2 ( 0 ) useclosestpt ( on ) useclosestprim ( on ) maxdistcheck ( off ) maxdist ( 0 ) dosliding ( off ) slidingrate ( 1 ) slidingscalemode ( none ) slidingattrib ( slidingscale ) folder6 ( 0 ) glue_usecluster ( off ) glue_clusterattrib ( cluster ) glue_minradius ( 0 ) glue_radius ( 0.1 ) glue_numpt ( 10 ) glue_searchpref ( nearest ) glue_constraintsperpt ( 1 ) glue_detach_chance ( 0 ) glue_point_chance ( 0 ) glue_seed ( 0 ) folder10 ( 0 ) strut_maxlen ( 100 ) strut_usedirattrib ( off ) strut_dirattrib ( N ) strut_invertnormal ( off ) strut_testnormals ( on ) strut_jitter ( 0.1 ) strut_constraintsperpt ( 1 ) strut_point_chance ( 0 ) strut_seed ( 0 ) strut_rayoff ( 0.01 ) folder0 ( 0 ) stretchstiffness ( 1 ) stretchstiffnessexp ( 10 ) stretchstiffnessscalemode ( none ) stretchstiffnessattrib ( stretchstiffness ) stretchstiffnessscale ( 1 ) stretchdampingratio ( 0.001 ) stretchdampingscalemode ( none ) stretchdampingattrib ( stretchdamping ) stretchdampingscale ( 1 ) stretchrestscale ( 1 ) docompress ( off ) compressstiffness ( 1 ) compressstiffnessexp ( 3 ) compressstiffnessscalemode ( none ) compressstiffnessattrib ( compressstiffness ) compressstiffnessscale ( 1 ) dotangent ( off ) tangentstiffness ( 1 ) tangentstiffnessexp ( 3 ) dostretchstiffnessdropoff ( off ) stretchstiffnessdropoff ( 0 ) stretchstiffnessdropoffdir ( decreasing ) dostretchstiffnessdropoffmin ( off ) stretchstiffnessdropoffmin ( 0 ) stretchanisotropy ( off ) folder12 ( 0 ) stretchwarpscale ( 1 ) stretchweftscale ( 1 ) stretchshearscale ( 1 ) materialuv ( materialuv ) dostretchvelblend ( off ) stretchvelblend ( 0.1 ) stretchvelblendscalemode ( none ) stretchvelblendattrib ( "" ) stretchplasticity ( off ) folder4 ( 0 ) stretchplasticthreshold ( 0.1 ) stretchplasticthresholdscalemode ( none ) stretchplasticthresholdattrib ( stretchplasticthreshold ) stretchplasticthresholdscale ( 1 ) stretchplasticthresholdratio ( on ) stretchplasticrate ( 1 ) stretchplasticratescalemode ( none ) stretchplasticrateattrib ( stretchplasticrate ) stretchplasticratescale ( 1 ) stretchplastichardening ( 1 ) stretchplastichardeningscalemode ( none ) stretchplastichardeningattrib ( stretchplastichardening ) stretchplastichardeningscale ( 1 ) dostretchgrp ( off ) stretchgrp ( stretch ) keepuniquestretch ( on ) folder1 ( 0 ) bendweld ( on ) bendcopystiffness ( on ) bendstiffness ( 1 ) bendstiffnessexp ( -1 ) bendstiffnessscalemode ( none ) bendstiffnessattrib ( bendstiffness ) bendstiffnessscale ( 1 ) benddampingratio ( 0.01 ) benddampingscalemode ( none ) benddampingattrib ( benddamping ) benddampingscale ( 1 ) bendrestscale ( 1 ) dobendstiffnessdropoff ( off ) bendstiffnessdropoff ( 0 ) bendstiffnessdropoffdir ( increasing ) dobendstiffnessdropoffmin ( off ) bendstiffnessdropoffmin ( 0 ) domaxbranchangle ( off ) maxbranchangle ( 10 ) bendplasticity ( off ) folder5 ( 0 ) bendplasticthreshold ( 10 ) bendplasticthresholdscalemode ( none ) bendplasticthresholdattrib ( bendplasticthreshold ) bendplasticthresholdscale ( 1 ) bendplasticrate ( 1 ) bendplasticratescalemode ( none ) bendplasticrateattrib ( bendplasticrate ) bendplasticratescale ( 1 ) bendplastichardening ( 1 ) bendplastichardeningscalemode ( none ) bendplastichardeningattrib ( bendplastichardening ) bendplastichardeningscale ( 1 ) dobendgrp ( off ) bendgrp ( bend ) keepuniquebend ( on ) folder11 ( 0 ) dobreaking ( off ) breakthreshold ( 0.1 ) breakscalemode ( none ) breakscaleattrib ( breakthresholdscale ) breakscale ( 1 ) breaktypeall ( stretchstress ) breaktypestretch ( stretchstress ) folder13 ( 0 ) attribpromote ( mean ) tag ( '$OS' ) statictopology ( off )
chlock vellumconstraints2 -*
chautoscope vellumconstraints2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vellumconstraints2
opexprlanguage -s hscript vellumconstraints2
opuserdata -n '___Version___' -v '2' vellumconstraints2
opcf ..
opcf ..

# Node vex (/vex)

# Node mat (/mat)

# Node stage (/stage)
opcf stage

# Node materiallibrary1 (Lop/materiallibrary)
opadd -e -n materiallibrary materiallibrary1
oplocate -x 0.473713 -y 0.42307899999999998 materiallibrary1
opspareds '    parm {         name    "genpreviewshaders"         baseparm         label   "Auto-generate Preview Surface Shaders"         export  none     }     parm {         name    "allowparmanim"         baseparm         label   "Allow Shader Parameter Animation"         export  none     }     parm {         name    "referencerendervars"         baseparm         label   "Reference Material Render Vars into Render Products"         export  none     }     parm {         name    "parentprimtype"         baseparm         label   "Parent Primitive Type"         export  none     }     parm {         name    "matpathprefix"         baseparm         label   "Material Path Prefix"         export  none     }     groupcollapsible {         name    "tabmenufolder"         label   "Tab Menu"          parm {             name    "tabmenumask"             label   "Tab Menu Mask"             type    string             default { "*builder parameter constant rampparm collect null subnet subnetconnector suboutput subinput genericshader" }             parmtag { "spare_category" "Tab Menu" }         }     }      parm {         name    "geometrygroup"         baseparm         label   "geometrygroup"         export  none     }     groupcollapsible {         name    "fillgroup2"         label   "Fill"         grouptag { "group_type" "collapsible" }         parmtag { "sidefx::header_parm" "fillmaterials" }          parm {             name    "matnet"             baseparm             label   "Material Network"             export  none         }         parm {             name    "containerpath"             baseparm             label   "Container Path"             export  none         }         parm {             name    "fillmaterials"             baseparm             label   "Auto-fill Materials"             export  none         }     }      multiparm {         name    "materials"         label    "Number of Materials"         baseparm         default 1         parmtag { "multistartoffset" "1" }          parm {             name    "enable#"             baseparm             label   "Enable"             joinnext             export  none         }         parm {             name    "matflag#"             baseparm             label   "Include Only VOPs with Material Flag Set"             export  none         }         parm {             name    "matnode#"             baseparm             label   "Material VOP"             export  none         }         parm {             name    "matpath#"             baseparm             label   "Material Path"             export  none         }         parm {             name    "assign#"             baseparm             label   "Assign to Geometry"             export  none         }         parm {             name    "geopath#"             baseparm             label   "Geometry Path"             export  none         }     }  ' materiallibrary1
opparm materiallibrary1  materials ( 1 )
opparm -V 21.0.440 materiallibrary1 genpreviewshaders ( on ) allowparmanim ( off ) referencerendervars ( on ) parentprimtype ( UsdGeomScope ) matpathprefix ( /materials/ ) geometrygroup ( ) fillgroup ( 0 ) matnet ( . ) containerpath ( /materials/ ) fillmaterials ( 0 ) materials ( 1 ) enable1 ( on ) matflag1 ( on ) matnode1 ( jellyfish ) matpath1 ( "" ) assign1 ( on ) geopath1 ( /sopimport1/mesh_0 ) tabmenufolder ( 0 ) tabmenumask ( '*builder parameter constant rampparm collect null subnet subnetconnector suboutput subinput genericshader' ) fillgroup2 ( 0 )
chlock materiallibrary1 -*
chautoscope materiallibrary1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -D off materiallibrary1
opexprlanguage -s hscript materiallibrary1
opuserdata -n '___Version___' -v '21.0.440' materiallibrary1
opcf materiallibrary1

# Node jellyfish (Vop/subnet)
opadd -e -n subnet jellyfish
oplocate -x 0.31141099999999999 -y 0.47142099999999998 jellyfish
opspareds '    groupcollapsible {         name    "folder1"         label   "Karma Material Builder"         grouptag { "sidefx::shader_isparm" "0" }          parm {             name    "inherit_ctrl"             label   "Inherit from Class"             type    integer             default { "2" }             menu {                 "0" "Never"                 "1" "Always"                 "2" "Material Flag"             }             range   { 0 10 }         }         parm {             name    "shader_referencetype"             label   "Class Arc"             type    string             default { [ "n = hou.pwd()\\nn_hasFlag = n.isMaterialFlagSet()\\ni = n.evalParm(\'inherit_ctrl\')\\nr = \'none\'\\nif i == 1 or (n_hasFlag and i == 2):\\n    r = \'inherit\'\\nreturn r" python ] }             menu {                 "none"          "None"                 "reference"     "Reference"                 "inherit"       "Inherit"                 "specialize"    "Specialize"                 "represent"     "Represent"             }             parmtag { "sidefx::shader_isparm" "0" }             parmtag { "spare_category" "Shader" }         }         parm {             name    "shader_baseprimpath"             label   "Class Prim Path"             type    string             default { "/__class_mtl__/`$OS`" }             parmtag { "script_action" "import lopshaderutils\\nlopshaderutils.selectPrimFromInputOrFile(kwargs)" }             parmtag { "script_action_help" "Select a primitive in the Scene Viewer or Scene Graph Tree pane.\\nCtrl-click to select using the primitive picker dialog." }             parmtag { "script_action_icon" "BUTTONS_reselect" }             parmtag { "sidefx::shader_isparm" "0" }             parmtag { "sidefx::usdpathtype" "prim" }             parmtag { "spare_category" "Shader" }         }         parm {             name    "separator1"             label   "separator1"             type    separator             default { "" }         }         parm {             name    "tabmenumask"             label   "Tab Menu Mask"             type    string             default { "karma USD ^mtlxUsd* ^mtlxramp* ^hmtlxramp* ^hmtlxcubicramp* MaterialX parameter constant collect null genericshader subnet subnetconnector suboutput subinput" }             parmtag { "spare_category" "Tab Menu" }         }         parm {             name    "shader_rendercontextname"             label   "Render Context Name"             type    string             default { "kma" }             parmtag { "sidefx::shader_isparm" "0" }             parmtag { "spare_category" "Shader" }         }         parm {             name    "shader_forcechildren"             label   "Force Translation of Children"             type    toggle             default { "1" }             parmtag { "sidefx::shader_isparm" "0" }             parmtag { "spare_category" "Shader" }         }     }  ' jellyfish
chblockbegin
chadd -t 0 0 jellyfish shader_referencetype
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'n = hou.pwd()\nn_hasFlag = n.isMaterialFlagSet()\ni = n.evalParm(\'inherit_ctrl\')\nr = \'none\'\nif i == 1 or (n_hasFlag and i == 2):\n    r = \'inherit\'\nreturn r' -l p jellyfish/shader_referencetype
chblockend
opparm -V 21.0.440 jellyfish folder1 ( 0 ) inherit_ctrl ( 2 ) shader_referencetype ( shader_referencetype ) shader_baseprimpath ( '/__class_mtl__/`$OS`' ) separator1 ( ) tabmenumask ( 'karma USD ^mtlxUsd* ^mtlxramp* ^hmtlxramp* ^hmtlxcubicramp* MaterialX parameter constant collect null genericshader subnet subnetconnector suboutput subinput' ) shader_rendercontextname ( kma ) shader_forcechildren ( on )
chlock jellyfish -*
chautoscope jellyfish -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E on jellyfish
opexprlanguage -s hscript jellyfish
opuserdata -n '___Version___' -v '21.0.440' jellyfish
opcf jellyfish

# Node inputs (Vop/subinput)
opadd -e -n subinput inputs
oplocate -x -4.53993 -y 0.037600000000000001 inputs
opspareds "" inputs
opparm -V 21.0.440 inputs
chlock inputs -*
chautoscope inputs -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off inputs
opexprlanguage -s hscript inputs
opuserdata -n '___Version___' -v '21.0.440' inputs

# Node mtlxstandard_surface (Vop/mtlxstandard_surface)
opadd -e -n mtlxstandard_surface mtlxstandard_surface
oplocate -x -0.2883 -y 0.037600000000000001 mtlxstandard_surface
opspareds "" mtlxstandard_surface
opparm mtlxstandard_surface signature ( default ) folder0 ( 1 ) base ( 1 ) base_color ( 0.683 0 0 ) diffuse_roughness ( 0.758 ) metalness ( 0 ) folder0_1 ( 1 ) specular ( 1 ) specular_color ( 1 0 0 ) specular_roughness ( 0.2 ) specular_IOR ( 1.5 ) specular_anisotropy ( 0 ) specular_rotation ( 0 ) folder0_5 ( 0 ) coat ( 0 ) coat_color ( 1 1 1 ) coat_roughness ( 0.1 ) coat_anisotropy ( 0 ) coat_rotation ( 0 ) coat_IOR ( 1.5 ) coat_normal ( 0 0 0 ) coat_affect_color ( 0 ) coat_affect_roughness ( 0 ) folder0_2 ( 1 ) transmission ( 1 ) transmission_color ( 1 0 0 ) transmission_depth ( 7 ) transmission_scatter ( 1 0 0 ) transmission_scatter_anisotropy ( 0 ) transmission_dispersion ( 0 ) transmission_extra_roughness ( 0 ) folder0_4 ( 1 ) sheen ( 0 ) sheen_color ( 1 0 0 ) sheen_roughness ( 0.3 ) folder0_3 ( 1 ) subsurface ( 0 ) subsurface_color ( 1 0 0 ) subsurface_radius ( 1 0 0 ) subsurface_scale ( 1 ) subsurface_anisotropy ( 0 ) folder0_7 ( 1 ) emission ( 0 ) emission_color ( 1 0 0 ) folder0_6 ( 1 ) thin_film_thickness ( 202 ) thin_film_IOR ( 1.5 ) folder0_8 ( 1 ) opacity ( 1 1 1 ) thin_walled ( off ) normal ( 0 0 0 ) tangent ( 0 0 0 )
chlock mtlxstandard_surface -*
chautoscope mtlxstandard_surface -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off mtlxstandard_surface
opexprlanguage -s hscript mtlxstandard_surface
opuserdata -n '___Version___' -v '' mtlxstandard_surface
opuserdata -n '__inputgroup_' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Base' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Coat' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Emission' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Geometry' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Sheen' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Specular' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Subsurface' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Thin Film' -v 'collapsed' mtlxstandard_surface
opuserdata -n '__inputgroup_Transmission' -v 'collapsed' mtlxstandard_surface

# Node mtlxdisplacement (Vop/mtlxdisplacement)
opadd -e -n mtlxdisplacement mtlxdisplacement
oplocate -x -0.2883 -y -2.4333999999999998 mtlxdisplacement
opspareds "" mtlxdisplacement
opparm mtlxdisplacement signature ( default ) displacement ( 0 ) displacement_vector3 ( 0 0 0 ) scale ( 1 )
chlock mtlxdisplacement -*
chautoscope mtlxdisplacement -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off mtlxdisplacement
opexprlanguage -s hscript mtlxdisplacement
opuserdata -n '___Version___' -v '' mtlxdisplacement

# Node Material_Outputs_and_AOVs (Vop/suboutput)
opadd -e -n suboutput Material_Outputs_and_AOVs
oplocate -x 2.4426000000000001 -y -3.8725000000000001 Material_Outputs_and_AOVs
opspareds "" Material_Outputs_and_AOVs
opparm -V 21.0.440 Material_Outputs_and_AOVs name1 ( surface ) label1 ( "" ) name2 ( displacement ) label2 ( "" ) name3 ( "" ) label3 ( "" ) name4 ( "" ) label4 ( "" ) name5 ( "" ) label5 ( "" ) name6 ( "" ) label6 ( "" ) name7 ( "" ) label7 ( "" ) name8 ( "" ) label8 ( "" ) name9 ( "" ) label9 ( "" ) name10 ( "" ) label10 ( "" ) name11 ( "" ) label11 ( "" ) name12 ( "" ) label12 ( "" ) name13 ( "" ) label13 ( "" ) name14 ( "" ) label14 ( "" ) name15 ( "" ) label15 ( "" ) name16 ( "" ) label16 ( "" ) name17 ( "" ) label17 ( "" ) name18 ( "" ) label18 ( "" ) name19 ( "" ) label19 ( "" ) name20 ( "" ) label20 ( "" ) name21 ( "" ) label21 ( "" ) name22 ( "" ) label22 ( "" ) name23 ( "" ) label23 ( "" ) name24 ( "" ) label24 ( "" ) name25 ( "" ) label25 ( "" ) name26 ( "" ) label26 ( "" ) name27 ( "" ) label27 ( "" ) name28 ( "" ) label28 ( "" ) name29 ( "" ) label29 ( "" ) name30 ( "" ) label30 ( "" ) name31 ( "" ) label31 ( "" ) name32 ( "" ) label32 ( "" ) name33 ( "" ) label33 ( "" ) name34 ( "" ) label34 ( "" ) name35 ( "" ) label35 ( "" ) name36 ( "" ) label36 ( "" ) name37 ( "" ) label37 ( "" ) name38 ( "" ) label38 ( "" ) name39 ( "" ) label39 ( "" ) name40 ( "" ) label40 ( "" ) name41 ( "" ) label41 ( "" ) name42 ( "" ) label42 ( "" ) name43 ( "" ) label43 ( "" ) name44 ( "" ) label44 ( "" ) name45 ( "" ) label45 ( "" ) name46 ( "" ) label46 ( "" ) name47 ( "" ) label47 ( "" ) name48 ( "" ) label48 ( "" ) name49 ( "" ) label49 ( "" ) name50 ( "" ) label50 ( "" ) name51 ( "" ) label51 ( "" ) name52 ( "" ) label52 ( "" ) name53 ( "" ) label53 ( "" ) name54 ( "" ) label54 ( "" ) name55 ( "" ) label55 ( "" ) name56 ( "" ) label56 ( "" ) name57 ( "" ) label57 ( "" ) name58 ( "" ) label58 ( "" ) name59 ( "" ) label59 ( "" ) name60 ( "" ) label60 ( "" ) name61 ( "" ) label61 ( "" ) name62 ( "" ) label62 ( "" ) name63 ( "" ) label63 ( "" ) name64 ( "" ) label64 ( "" )
chlock Material_Outputs_and_AOVs -*
chautoscope Material_Outputs_and_AOVs -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off Material_Outputs_and_AOVs
opexprlanguage -s hscript Material_Outputs_and_AOVs
opuserdata -n '___Version___' -v '21.0.440' Material_Outputs_and_AOVs

# Node material_properties (Vop/kma_material_properties)
opadd -e -n kma_material_properties material_properties
oplocate -x -0.2883 -y -3.8721299999999998 material_properties
opspareds "" material_properties
opparm material_properties signature ( 0 ) folder1 ( 0 ) xn____activate__karmadiffusequality_vrb ( 0 ) xn__karmadiffusequality_z6a ( 1 ) xn____activate__karmareflectquality_vrb ( 0 ) xn__karmareflectquality_z6a ( 1 ) xn____activate__karmarefractquality_vrb ( 0 ) xn__karmarefractquality_z6a ( 1 ) xn____activate__karmavolumequality_8pb ( 0 ) xn__karmavolumequality_d5a ( 1 ) xn____activate__karmasssquality_dlb ( 0 ) xn__karmasssquality_h0a ( 1 ) xn____activate__karmavolumesteprate_vrb ( 0 ) xn__karmavolumesteprate_z6a ( 0.25 ) folder2 ( 0 ) xn____activate__karmadiffuselimit_mob ( 0 ) xn__karmadiffuselimit_q3a ( 1 ) xn____activate__karmareflectlimit_mob ( 0 ) xn__karmareflectlimit_q3a ( 4 ) xn____activate__karmarefractlimit_mob ( 0 ) xn__karmarefractlimit_q3a ( 4 ) xn____activate__karmavolumelimit_zmb ( 0 ) xn__karmavolumelimit_31a ( 0 ) xn____activate__karmassslimit_3hb ( 0 ) xn__karmassslimit_7wa ( 0 ) folder3 ( 0 ) xn____activate__karmavolumeuniform_8pb ( 0 ) xn__karmavolumeuniform_d5a ( off ) xn____activate__karmavolumeuniformdensity_n1b ( 0 ) xn__karmavolumeuniformdensity_rhb ( 1 ) xn____activate__karmavolumeuniformsamples_n1b ( 0 ) xn__karmavolumeuniformsamples_rhb ( 4 ) folder4 ( 0 ) xn____activate__karmalpetag_ueb ( 0 ) xn__karmalpetag_yta ( "" ) xn____activate__karmadielectricpriority_eyb ( 0 ) xn__karmadielectricpriority_ieb ( 0 ) xn____activate__karmamtlx_imagewidth_itb ( 0 ) xn__karmamtlx_imagewidth_m8a ( 0 ) xn____activate__karmamtlx_imageblur_vrb ( 0 ) xn__karmamtlx_imageblur_z6a ( 0 ) xn____activate__karmathinwallatrefractlimit_w4b ( 0 ) xn__karmathinwallatrefractlimit_0kb ( off ) __section_Caustics ( 0 ) xn____activate__karmacausticsenable_vrb ( 0 ) xn__karmacausticsenable_z6a ( off ) xn____activate__karmacausticsroughnessclamp_w4b ( 0 ) xn__karmacausticsroughnessclamp_0kb ( 0.2 ) __section_FakeCaustics ( 0 ) xn____activate__karmafakecausticsbsdfenable_w4b ( 0 ) xn__karmafakecausticsbsdfenable_0kb ( on ) xn____activate__karmafakecausticscolor_rwb ( 0 ) xn__karmafakecausticscolor_vcb ( 1 1 1 ) xn____activate__karmafakecausticsopacity_0zb ( 0 ) xn__karmafakecausticsopacity_4fb ( 1 1 1 ) xn____activate__karmafakecausticsfresneldarken_s9b ( 0 ) xn__karmafakecausticsfresneldarken_wpb ( 0 ) folder5 ( 0 ) xn____activate__karmatreat_as_lightsource_n1b ( 0 ) xn__karmatreat_as_lightsource_rhb ( No ) xn____activate__karmalightsource_samplingquality_1dc ( 0 ) xn__karmalightsource_samplingquality_5sb ( 1 ) xn____activate__karmalightsource_diffusescale_57b ( 0 ) xn__karmalightsource_diffusescale_9nb ( 1 ) xn____activate__karmalightsource_specularscale_s9b ( 0 ) xn__karmalightsource_specularscale_wpb ( 1 )
chlock material_properties -*
chautoscope material_properties -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E off material_properties
opexprlanguage -s hscript material_properties
opuserdata -n '___Version___' -v '' material_properties
opcf ..
opcf ..

# Node karmaphysicalsky1 (Lop/karmaphysicalsky)
opadd -e -n karmaphysicalsky karmaphysicalsky1
oplocate -x 0.48472799999999999 -y -1.6676200000000001 karmaphysicalsky1
opspareds "" karmaphysicalsky1
chblockbegin
chadd -t 0 0 karmaphysicalsky1 sealevel
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-ch(\'./planetcentery\')-0.1' karmaphysicalsky1/sealevel
chadd -t 0 0 karmaphysicalsky1 stepsizemax
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch(\'./stepsizemin\')*10' karmaphysicalsky1/stepsizemax
chblockend
opparm karmaphysicalsky1 primpath ( '/lights/$OS' ) sepparm ( ) intensity_control ( set ) intensity ( 1 ) exposure_control ( set ) exposure ( 0 ) renderlightgeo ( on ) skymode ( 0 ) sepparm8 ( ) folder4_2 ( 0 0 0 0 ) angle_control ( set ) angle ( 10 ) sepparm7 ( ) set_using ( 0 ) folder0 ( 0 ) solar_altitude_control ( set ) solar_altitude ( 43.7 ) solar_azimuth_control ( set ) solar_azimuth ( 360 ) folder1 ( 0 ) geo_latitude ( 43.6532 ) geo_longitude ( 79.3832 ) geo_month ( Oct ) geo_day ( 2 ) geo_time ( 12 0 ) geo_hr_spec ( 3 ) geo_time_zone ( "" ) geo_daylight ( off ) sepparm10 ( ) enablesun ( on ) sepparm11 ( ) folder3 ( 1 ) sun_intensity_control ( set ) sun_intensity ( 3 ) sun_exposure_control ( set ) sun_exposure ( 0 ) sun_color_control ( set ) sun_color ( 1 0.4390000104904175 0.4390000104904175 ) sepparm3 ( ) sun_diffuse_control ( set ) sun_diffuse ( 1 ) sun_specular_control ( set ) sun_specular ( 1 ) sun_renderlightgeo_control ( set ) sun_renderlightgeo ( 2 ) sepparm6 ( ) Sampling ( 0 ) sun_misbias_control ( none ) sun_misbias ( 0 ) sun_samplingmode_control ( none ) sun_samplingmode ( Auto ) sun_samplingquality_control ( none ) sun_samplingquality ( 1 ) Light ( 1 ) sun_contribs_control ( none ) sun_contribs ( * ) sun_lpetag_control ( none ) sun_lpetag ( "" ) turbidity_control ( set ) turbidity ( 5.91 ) ground_albedo_control ( set ) ground_albedo ( 0 0 0 ) computegroundcolor ( on ) ground_color_control ( set ) ground_color ( 0.2 0.2 0.2 ) horizon_blur_control ( set ) horizon_blur ( 0.5 ) sepparm9 ( ) enablesky ( on ) sepparm12 ( ) folder2 ( 1 ) sky_intensity_control ( set ) sky_intensity ( 1 ) sky_exposure_control ( set ) sky_exposure ( 0 ) sky_color_control ( set ) sky_color ( 1 0 0 ) sepparm4 ( ) sky_diffuse_control ( set ) sky_diffuse ( 1 ) sky_specular_control ( set ) sky_specular ( 1 ) sky_renderlightgeo_control ( set ) sky_renderlightgeo ( 2 ) sepparm5 ( ) Sampling2 ( 1 ) sky_misbias_control ( none ) sky_misbias ( 0 ) sky_samplingmode_control ( none ) sky_samplingmode ( Auto ) sky_samplingquality_control ( none ) sky_samplingquality ( 1 ) sky_portalmisbias_control ( none ) sky_portalmisbias ( 0 ) Light2 ( 1 ) sky_contribs_control ( none ) sky_contribs ( * ) sky_lpetag_control ( none ) sky_lpetag ( "" ) folder5 ( 0 ) rayleighcoeff_control ( set ) rayleighcol ( 0.2 0.4 0.9 ) rayleighscale ( 3e-5 ) xn__primvarsrayleighdist_control_qmb ( set ) rayleighdist ( 8 ) folder6 ( 0 ) xn__primvarsmiecoeff_control_7fb ( set ) miescattercol ( 0.8 0.8 0.8 ) miescatterscale ( 5e-6 ) xn__primvarsmieabsorpcoeff_control_zpb ( set ) mieabsorpcol ( 0.9 0.9 0.9 ) mieabsorpscale ( 5e-6 ) xn__primvarsmiedist_control_leb ( set ) miedist ( 1.2 ) xn__primvarsmiephase_control_7fb ( set ) xn__primvarsmiephase_61a ( 0.8 ) folder7 ( 0 ) xn__primvarsextraabsorption_control_mrb ( set ) extraabsorpcol ( 0.325 0.94 0.043 ) extrascale ( 2e-6 ) xn__primvarsextraaltitude_control_dob ( set ) extraaltitude ( 25 ) xn__primvarsextrawidth_control_hjb ( set ) extrawidth ( 30 ) folder8 ( 0 ) xn__primvarsgroundalbedo_control_qmb ( set ) xn__primvarsgroundalbedo_p8a ( 0.2 0.2 0.2 ) xn__primvarsgroundvisibility_control_8sb ( set ) xn__primvarsgroundvisibility_7fb ( -primary ) folder9 ( 0 ) xn__primvarsplanetcenter_control_qmb ( set ) planetcenter ( 0 -6371 0 ) xn__primvarssealevel_control_7fb ( set ) sealevel ( sealevel ) unitscale ( 1000 ) folder10 ( 0 ) xn__primvarskarmaobjectlpetag_control_vubfg ( set ) xn__primvarskarmaobjectlpetag_uhbfg ( "" ) xn__primvarsstepsizemin_control_3kb ( set ) stepsizemin ( 0.25 ) xn__primvarsstepsizemax_control_3kb ( set ) stepsizemax ( stepsizemax ) xn__primvarskarmaobjectvolumelimit_control_02bfg ( set ) xn__primvarskarmaobjectvolumelimit_zpbfg ( 1 ) folder11 ( 0 ) xn__primvarsociofrom_control_7fb ( set ) xn__primvarsociofrom_61a ( lin_rec709 ) xn__primvarslutdim_control_ycb ( set ) xn__primvarslutdim_xya ( 256 256 ) xn__primvarsgroundoffset_control_qmb ( set ) xn__primvarsgroundoffset_p8a ( 0 ) xn__primvarsgroundreceiveshadow_control_4xb ( set ) xn__primvarsgroundreceiveshadow_3kb ( off ) xn__primvarsrenderbackside_control_zpb ( set ) xn__primvarsrenderbackside_ycb ( off ) xn__primvarssolidalphainipr_control_mrb ( set ) xn__primvarssolidalphainipr_leb ( on ) skyprim ( sky ) sunprim ( sun ) atmoprim ( atmosphere ) lightmap ( karma/hoseksolarmap.rat ) upaxis ( Y )
chlock karmaphysicalsky1 -*
chautoscope karmaphysicalsky1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -D off karmaphysicalsky1
opexprlanguage -s hscript karmaphysicalsky1
opuserdata -n '___Version___' -v '' karmaphysicalsky1

# Node karmaphysicalsky2 (Lop/karmaphysicalsky)
opadd -e -n karmaphysicalsky karmaphysicalsky2
oplocate -x 1.7378100000000001 -y -2.1286200000000002 karmaphysicalsky2
opspareds "" karmaphysicalsky2
chblockbegin
chadd -t 0 0 karmaphysicalsky2 sealevel
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-ch(\'./planetcentery\')-0.1' karmaphysicalsky2/sealevel
chadd -t 0 0 karmaphysicalsky2 stepsizemax
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch(\'./stepsizemin\')*10' karmaphysicalsky2/stepsizemax
chblockend
opparm karmaphysicalsky2 primpath ( '/lights/$OS' ) sepparm ( ) intensity_control ( set ) intensity ( 1 ) exposure_control ( set ) exposure ( 0 ) renderlightgeo ( on ) skymode ( 0 ) sepparm8 ( ) folder4_2 ( 0 0 0 0 ) angle_control ( set ) angle ( 10 ) sepparm7 ( ) set_using ( 0 ) folder0 ( 0 ) solar_altitude_control ( set ) solar_altitude ( -50 ) solar_azimuth_control ( set ) solar_azimuth ( 108.2 ) folder1 ( 0 ) geo_latitude ( 43.6532 ) geo_longitude ( 79.3832 ) geo_month ( Oct ) geo_day ( 2 ) geo_time ( 12 0 ) geo_hr_spec ( 3 ) geo_time_zone ( "" ) geo_daylight ( off ) sepparm10 ( ) enablesun ( on ) sepparm11 ( ) folder3 ( 1 ) sun_intensity_control ( set ) sun_intensity ( 1 ) sun_exposure_control ( set ) sun_exposure ( 0 ) sun_color_control ( set ) sun_color ( 1 0.4390000104904175 0.4390000104904175 ) sepparm3 ( ) sun_diffuse_control ( set ) sun_diffuse ( 1 ) sun_specular_control ( set ) sun_specular ( 1 ) sun_renderlightgeo_control ( set ) sun_renderlightgeo ( 2 ) sepparm6 ( ) Sampling ( 0 ) sun_misbias_control ( none ) sun_misbias ( 0 ) sun_samplingmode_control ( none ) sun_samplingmode ( Auto ) sun_samplingquality_control ( none ) sun_samplingquality ( 1 ) Light ( 1 ) sun_contribs_control ( none ) sun_contribs ( * ) sun_lpetag_control ( none ) sun_lpetag ( "" ) turbidity_control ( set ) turbidity ( 5.91 ) ground_albedo_control ( set ) ground_albedo ( 0 0 0 ) computegroundcolor ( on ) ground_color_control ( set ) ground_color ( 0.2 0.2 0.2 ) horizon_blur_control ( set ) horizon_blur ( 0.5 ) sepparm9 ( ) enablesky ( on ) sepparm12 ( ) folder2 ( 1 ) sky_intensity_control ( set ) sky_intensity ( 1 ) sky_exposure_control ( set ) sky_exposure ( 0 ) sky_color_control ( set ) sky_color ( 1 0 0 ) sepparm4 ( ) sky_diffuse_control ( set ) sky_diffuse ( 1 ) sky_specular_control ( set ) sky_specular ( 1 ) sky_renderlightgeo_control ( set ) sky_renderlightgeo ( 2 ) sepparm5 ( ) Sampling2 ( 1 ) sky_misbias_control ( none ) sky_misbias ( 0 ) sky_samplingmode_control ( none ) sky_samplingmode ( Auto ) sky_samplingquality_control ( none ) sky_samplingquality ( 1 ) sky_portalmisbias_control ( none ) sky_portalmisbias ( 0 ) Light2 ( 1 ) sky_contribs_control ( none ) sky_contribs ( * ) sky_lpetag_control ( none ) sky_lpetag ( "" ) folder5 ( 0 ) rayleighcoeff_control ( set ) rayleighcol ( 0.2 0.4 0.9 ) rayleighscale ( 3e-5 ) xn__primvarsrayleighdist_control_qmb ( set ) rayleighdist ( 8 ) folder6 ( 0 ) xn__primvarsmiecoeff_control_7fb ( set ) miescattercol ( 0.8 0.8 0.8 ) miescatterscale ( 5e-6 ) xn__primvarsmieabsorpcoeff_control_zpb ( set ) mieabsorpcol ( 0.9 0.9 0.9 ) mieabsorpscale ( 5e-6 ) xn__primvarsmiedist_control_leb ( set ) miedist ( 1.2 ) xn__primvarsmiephase_control_7fb ( set ) xn__primvarsmiephase_61a ( 0.8 ) folder7 ( 0 ) xn__primvarsextraabsorption_control_mrb ( set ) extraabsorpcol ( 0.325 0.94 0.043 ) extrascale ( 2e-6 ) xn__primvarsextraaltitude_control_dob ( set ) extraaltitude ( 25 ) xn__primvarsextrawidth_control_hjb ( set ) extrawidth ( 30 ) folder8 ( 0 ) xn__primvarsgroundalbedo_control_qmb ( set ) xn__primvarsgroundalbedo_p8a ( 0.2 0.2 0.2 ) xn__primvarsgroundvisibility_control_8sb ( set ) xn__primvarsgroundvisibility_7fb ( -primary ) folder9 ( 0 ) xn__primvarsplanetcenter_control_qmb ( set ) planetcenter ( 0 -6371 0 ) xn__primvarssealevel_control_7fb ( set ) sealevel ( sealevel ) unitscale ( 1000 ) folder10 ( 0 ) xn__primvarskarmaobjectlpetag_control_vubfg ( set ) xn__primvarskarmaobjectlpetag_uhbfg ( "" ) xn__primvarsstepsizemin_control_3kb ( set ) stepsizemin ( 0.25 ) xn__primvarsstepsizemax_control_3kb ( set ) stepsizemax ( stepsizemax ) xn__primvarskarmaobjectvolumelimit_control_02bfg ( set ) xn__primvarskarmaobjectvolumelimit_zpbfg ( 1 ) folder11 ( 0 ) xn__primvarsociofrom_control_7fb ( set ) xn__primvarsociofrom_61a ( lin_rec709 ) xn__primvarslutdim_control_ycb ( set ) xn__primvarslutdim_xya ( 256 256 ) xn__primvarsgroundoffset_control_qmb ( set ) xn__primvarsgroundoffset_p8a ( 0 ) xn__primvarsgroundreceiveshadow_control_4xb ( set ) xn__primvarsgroundreceiveshadow_3kb ( off ) xn__primvarsrenderbackside_control_zpb ( set ) xn__primvarsrenderbackside_ycb ( off ) xn__primvarssolidalphainipr_control_mrb ( set ) xn__primvarssolidalphainipr_leb ( on ) skyprim ( sky ) sunprim ( sun ) atmoprim ( atmosphere ) lightmap ( karma/hoseksolarmap.rat ) upaxis ( Y )
chlock karmaphysicalsky2 -*
chautoscope karmaphysicalsky2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -D off karmaphysicalsky2
opexprlanguage -s hscript karmaphysicalsky2
opuserdata -n '___Version___' -v '' karmaphysicalsky2
opcf ..
opcf obj
opcf Jellyfish

# Node line1 (Sop/line)
opadd -e -n line line1
oplocate -x -0.52705299999999999 -y 0.0629937 line1
opspareds "" line1
opparm -V 21.0.440 line1 type ( poly ) origin ( 0 0 0 ) dir ( 0 1 0 ) dist ( 1 ) points ( 50 ) order ( 4 )
chlock line1 -*
chautoscope line1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off line1
opexprlanguage -s hscript line1
opuserdata -n '___Version___' -v '21.0.440' line1

# Node revolve1 (Sop/revolve::2.0)
opadd -e -n revolve::2.0 revolve1
oplocate -x -0.52705299999999999 -y -3.7378499999999999 revolve1
opspareds "" revolve1
opparm revolve1 group ( "" ) sepparm3 ( ) origin ( 0 0 0 ) dir ( 0 1 0 ) divs ( 100 ) sepparm ( ) type ( closed ) angle ( 0 360 ) sepparm2 ( ) surftype ( quads ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( on ) reversecrosssections ( off ) stretcharoundturns ( off ) maxstretcharoundturns ( 10 ) cap ( off ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) uv_folder ( 1 ) computeuvs ( on ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) wrapu ( on ) wrapv ( on ) flipu ( on ) uvscale ( 1 1 )
chlock revolve1 -*
chautoscope revolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off revolve1
opexprlanguage -s hscript revolve1
opuserdata -n '___Version___' -v '' revolve1

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -0.52705299999999999 -y -2.7046000000000001 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( none ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x -0.52705299999999999 -y -4.6379400000000004 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 21.0.440 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '21.0.440' fuse1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -0.52705299999999999 -y -6.6090499999999999 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CONTROLLER/yTranslate")' transform1/ty
chblockend
opparm -V 21.0.440 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 0.8 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '21.0.440' transform1

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x -0.52705299999999999 -y -7.5002000000000004 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 21.0.440 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.01 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '21.0.440' polyextrude1

# Node OUT_BELL (Sop/null)
opadd -e -n null OUT_BELL
oplocate -x -0.47669600000000001 -y -9.3126499999999997 OUT_BELL
opspareds "" OUT_BELL
opparm -V 21.0.440 OUT_BELL copyinput ( on ) cacheinput ( off )
chlock OUT_BELL -*
chautoscope OUT_BELL -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT_BELL
opexprlanguage -s hscript OUT_BELL
opuserdata -n '___Version___' -v '21.0.440' OUT_BELL

# Node CONTROLLER (Sop/null)
opadd -e -n null CONTROLLER
oplocate -x 2.8496899999999998 -y -10.9847 CONTROLLER
opspareds '    parm {         name    "copyinput"         baseparm         label   "Copy Input (Note: Input will be still cooked if disabled)"         export  none     }     parm {         name    "cacheinput"         baseparm         label   "Cache Input"         export  none     }     parm {         name    "yTranslate"         label   "Y Translate"         type    float         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "bendMain"         label   "Bend Main"         type    float         default { "0" }         range   { -180 180 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "bendTip"         label   "Bend Tip"         type    float         default { "0" }         range   { -180 180 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "startPtsPct"         label   "Start Points Percent"         type    float         default { "0" }         range   { 0 100 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "End_Points_Percent"         label   "endPtsPct"         type    float         default { "0" }         range   { 0 100 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Tentacles_Percent"         label   "tentPct"         type    float         default { "0" }         range   { 0 100 }         parmtag { "script_callback_language" "python" }     } ' CONTROLLER
chblockbegin
chadd -t 0 4.125 CONTROLLER yTranslate
chkey -t 0 -v 0 -m 0 -a 0.33333333333333331 -A 0.54166666666666663 -T a  -o mM  -F 'bezier()' CONTROLLER/yTranslate
chkey -t 1.625 -v -0.14999999999999999 -m -0.056910518053375221 -a 0.5425431344762971 -A 0.13911362422469151 -T a  -o mM  -F 'bezier()' CONTROLLER/yTranslate
chkey -t 2.0416666666666665 -v -0.16 -m 0 -a 0.13888888888888884 -A 0.18055555555555564 -T a  -o mM  -F 'bezier()' CONTROLLER/yTranslate
chkey -t 2.5833333333333335 -v -0.14999999999999999 -m 0.0553846153846154 -a 0.18083226659524937 -A 0.51467645107878635 -T a  -o mM  -F 'bezier()' CONTROLLER/yTranslate
chkey -t 4.125 -v 0.34999999999999998 -m 0 -a 0.51388888888888884 -A 0.33333333333333331 -T a  -o mM  -F 0.20 CONTROLLER/yTranslate
chadd -t 0 4.125 CONTROLLER bendMain
chkey -t 0 -v 96 -m 0 -a 0.33333333333333331 -A 0.54166666666666663 -T a  -o mM  -F 'bezier()' CONTROLLER/bendMain
chkey -t 1.625 -v 85 -m 0 -a 0.54166666666666663 -A 0.83333333333333326 -T a  -o mM  -F 'bezier()' CONTROLLER/bendMain
chkey -t 4.125 -v 86 -m 0 -a 0.83333333333333326 -A 0.33333333333333331 -T a  -o mM  -F 'bezier()' CONTROLLER/bendMain
chadd -t 0 4.125 CONTROLLER bendTip
chkey -t 0 -v 24 -m 0 -a 0.33333333333333331 -A 0.54166666666666663 -T a  -o mM  -F 'bezier()' CONTROLLER/bendTip
chkey -t 1.625 -v 29 -m 0 -a 0.54166666666666663 -A 0.83333333333333326 -T a  -o mM  -F 'bezier()' CONTROLLER/bendTip
chkey -t 4.125 -v -50 -m 0 -a 0.83333333333333326 -A 0.33333333333333331 -T a  -o mM  -F 'bezier()' CONTROLLER/bendTip
chblockend
opparm -V 21.0.440 CONTROLLER copyinput ( on ) cacheinput ( off ) yTranslate ( yTranslate ) bendMain ( bendMain ) bendTip ( bendTip ) startPtsPct ( 6.3 ) End_Points_Percent ( 26 ) Tentacles_Percent ( 100 )
chlock CONTROLLER -*
chautoscope CONTROLLER -* +yTranslate +bendMain +bendTip
opcolor -c 0.093999996781349182 0.36899998784065247 0.68999999761581421 CONTROLLER
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off CONTROLLER
opexprlanguage -s hscript CONTROLLER
opuserdata -n '___Version___' -v '21.0.440' CONTROLLER
opuserdata -n 'nodeshape' -v 'circle' CONTROLLER

# Node grid1 (Sop/grid)
opadd -e -n grid grid1
oplocate -x 5.5278400000000003 -y -0.027799399999999998 grid1
opspareds "" grid1
opparm -V 21.0.440 grid1 type ( poly ) surftype ( quads ) orient ( xy ) size ( 0.2 0.8 ) t ( 0 0 0 ) r ( 0 0 0 ) rows ( 100 ) cols ( 10 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid1 -*
chautoscope grid1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grid1
opexprlanguage -s hscript grid1
opuserdata -n '___Version___' -v '21.0.440' grid1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 5.5278400000000003 -y -0.97336100000000003 attribwrangle1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "pow"                 label   "Pow"                 type    float                 default { "0" }                 range   { 0 1 }             }             parm {                 name    "amp"                 label   "Amp"                 type    float                 default { "0" }                 range   { 0 1 }             }             parm {                 name    "noisescale"                 label   "Noisescale"                 type    float                 default { "0" }                 range   { 0 1 }             }             parm {                 name    "freq"                 label   "Freq"                 type    float                 default { "0" }                 range   { 0 1 }             }             parm {                 name    "noiseamp"                 label   "Noiseamp"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }         parm {             name    "vex_strictvariables"             baseparm             label   "Standard Variable Names Only"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// get position of botttom corner to find max dist \nvector bottomCorner = pointattrib(0, "P", 0, 0);\nfloat maxDist = abs(bottomCorner.x); \n\n// get current point\'s pct away from center \nfloat pct = (maxDist - abs(@P.x))/maxDist; \n// remap pct \npct = pow((1 - pct), chf("pow")) * chf("amp"); \n\n// get noise to add\nfloat noise = noise(@P*chf("noisescale")) * chf("noiseamp");\n\n\n// offset position (and scale offset amt by pct) \n@P.z +=  pct * sin(@P.y * chf("freq") + noise); \n' ) exportlist ( * ) vex_strict ( off ) vex_strictvariables ( on ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) pow ( 1.7 ) amp ( 0.055 ) noisescale ( 9 ) freq ( 50 ) noiseamp ( 12 )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node OUT_ARMS (Sop/null)
opadd -e -n null OUT_ARMS
oplocate -x 5.8543200000000004 -y -18.805 OUT_ARMS
opspareds "" OUT_ARMS
opparm -V 21.0.440 OUT_ARMS copyinput ( on ) cacheinput ( off )
chlock OUT_ARMS -*
chautoscope OUT_ARMS -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT_ARMS
opexprlanguage -s hscript OUT_ARMS
opuserdata -n '___Version___' -v '21.0.440' OUT_ARMS

# Node remesh1 (Sop/remesh::2.0)
opadd -e -n remesh::2.0 remesh1
oplocate -x 5.5308400000000004 -y -2.8141099999999999 remesh1
opspareds "" remesh1
opparm -V 21.0.440 remesh1 group ( "" ) hard_edges ( "" ) hard_points ( "" ) hardenuvseams ( off ) uvattriv ( uv ) meshing ( 0 ) iterations ( 2 ) smoothing ( 0.1 ) inputptsonly ( off ) detachfromnongroup ( off ) recomputenormals ( on ) sizinggroup ( 0 ) sizing ( uniform ) targetsize ( 0.01 ) usemaxsize ( off ) maxsize ( 0.1 ) useminsize ( off ) minsize ( 0.1 ) density ( 2 ) gradation ( 0.25 ) sizingattribs ( 0 ) usemeshsizeattrib ( off ) meshsizeattrib ( targetmeshsize ) useminsizeattrib ( off ) minsizeattrib ( minmeshsize ) usemaxsizeattrib ( off ) maxsizeattrib ( maxmeshsize ) outputattribs ( 0 ) useouthardedgesgroup ( off ) outhardedgesgroup ( hardedges ) useoutmeshsizeattrib ( off ) outmeshsizeattrib ( meshsize ) useoutmeshqualityattrib ( off ) outmeshqualityattrib ( meshquality )
chlock remesh1 -*
chautoscope remesh1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remesh1
opexprlanguage -s hscript remesh1
opuserdata -n '___Version___' -v '21.0.440' remesh1

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x 5.5308400000000004 -y -7.8738299999999999 transform2
opspareds "" transform2
opparm -V 21.0.440 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -0.25 0.3 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '21.0.440' transform2

# Node copy1 (Sop/copyxform)
opadd -e -n copyxform copy1
oplocate -x 5.5308400000000004 -y -8.8738299999999999 copy1
opspareds "" copy1
chblockbegin
chadd -t 0 0 copy1 ry
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '360/ch("ncy")' copy1/ry
chblockend
opparm -V 21.0.440 copy1 sourcegroup ( "" ) sourcegrouptype ( guess ) ncy ( 5 ) pack ( off ) pivot ( centroid ) viewportlod ( full ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 ry 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) newgroups ( off ) newgroupprefix ( copyGroup ) docopyattrib ( off ) copyattrib ( copynum )
chlock copy1 -*
chautoscope copy1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copy1
opexprlanguage -s hscript copy1
opuserdata -n '___Version___' -v '21.0.440' copy1

# Node pointdeform1 (Sop/pointdeform)
opadd -e -n pointdeform pointdeform1
oplocate -x 5.8543200000000004 -y -12.702299999999999 pointdeform1
opspareds "" pointdeform1
opparm pointdeform1 group ( "" ) mode ( capturedeform ) folder0 ( 0 ) radius ( 0.1 ) minpt ( 1 ) maxpt ( 100 ) pieceattrib ( "" ) preseparatepieces ( on ) folder1 ( 0 ) rigidprojection ( on ) enablemask ( off ) mask ( 1 ) maskscalemode ( none ) maskattrib ( mask ) updateaffectednmls ( on ) attribs ( * ) delcaptatr ( on )
chlock pointdeform1 -*
chautoscope pointdeform1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off pointdeform1
opexprlanguage -s hscript pointdeform1
opuserdata -n '___Version___' -v '' pointdeform1

# Node object_merge1 (Sop/object_merge)
opadd -e -n object_merge object_merge1
oplocate -x 9.8454099999999993 -y -5.5421800000000001 object_merge1
opspareds "" object_merge1
opparm object_merge1  numobj ( 1 )
opparm -V 21.0.440 object_merge1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../OUT_BELL ) group1 ( "" ) expand1 ( off )
chlock object_merge1 -*
chautoscope object_merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge1
opexprlanguage -s hscript object_merge1
opuserdata -n '___Version___' -v '21.0.440' object_merge1

# Node timeshift1 (Sop/timeshift)
opadd -e -n timeshift timeshift1
oplocate -x 8.3068899999999992 -y -7.8644800000000004 timeshift1
opspareds "" timeshift1
chblockbegin
chadd -t 0 0 timeshift1 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift1/time
chadd -t 0 0 timeshift1 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift1/frange1
chadd -t 0 0 timeshift1 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift1/frange2
chadd -t 0 0 timeshift1 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift1/trange1
chadd -t 0 0 timeshift1 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift1/trange2
chblockend
opparm -V 21.0.440 timeshift1 method ( byframe ) frame ( 1 ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift1 -*
chautoscope timeshift1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift1
opexprlanguage -s hscript timeshift1
opuserdata -n '___Version___' -v '21.0.440' timeshift1

# Node extractcentroid1 (Sop/extractcentroid)
opadd -e -n extractcentroid extractcentroid1
oplocate -x 9.84666 -y -6.4849600000000001 extractcentroid1
opspareds "" extractcentroid1
opparm -V 21.0.440 extractcentroid1 partitiontype ( detail ) pieceattrib ( name ) class ( prim ) method ( com ) output ( points ) centroidattrib ( centroid ) transferattributes ( "" ) transfergroups ( "" )
chlock extractcentroid1 -*
chautoscope extractcentroid1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extractcentroid1
opexprlanguage -s hscript extractcentroid1
opuserdata -n '___Version___' -v '21.0.440' extractcentroid1

# Editable subnode
opcf vellumsolver1/dopnet1

# Node forces (Dop/subnet)
opadd -e -n subnet forces
oplocate -x 1.1293500000000001 -y 6.9049500000000004 forces
opspareds "" forces
opparm -V 21.0.440 forces
chlock forces -*
chautoscope forces -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off forces
opexprlanguage -s hscript forces
opuserdata -n '___Version___' -v '21.0.440' forces
opcf forces

# Node FORCE (Dop/subnetoutput)
opadd -e -n subnetoutput FORCE
oplocate -x 0.24560199999999999 -y 1.2904899999999999 FORCE
opspareds "" FORCE
opparm -V 21.0.440 FORCE outputidx ( 0 )
chlock FORCE -*
chautoscope FORCE -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off FORCE
opexprlanguage -s hscript FORCE
opuserdata -n '___Version___' -v '21.0.440' FORCE

# Node SOURCE (Dop/subnetoutput)
opadd -e -n subnetoutput SOURCE
oplocate -x 3.6071300000000002 -y 1.2904899999999999 SOURCE
opspareds "" SOURCE
opparm -V 21.0.440 SOURCE outputidx ( 1 )
chlock SOURCE -*
chautoscope SOURCE -*
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SOURCE
opexprlanguage -s hscript SOURCE
opuserdata -n '___Version___' -v '21.0.440' SOURCE

# Sticky Note __stickynote1
python -c 'hou.pwd().createStickyNote("__stickynote1")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setText("Wire POP Forces into FORCE to apply per-point forces.\n\nWire Vellum Constraint Properties and Vellum Rest Blend to update constraints dynamically.\n\nWire Vellum Constraints to build new constraints.\n\nWire Vellum Source DOPs to SOURCE to add new vellum geometry.")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setPosition(hou.Vector2(5.9, 2.55825))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setSize(hou.Vector2(4.80361, 3.02303))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setMinimized(False)'
oporder -e FORCE SOURCE 
opcf ..

# End of editable subnode
opcf ../..


# Node Points_To_Pin (Sop/groupcreate)
opadd -e -n groupcreate Points_To_Pin
oplocate -x 5.5308400000000004 -y -4.8738299999999999 Points_To_Pin
opspareds "" Points_To_Pin
opparm -V 21.0.440 Points_To_Pin groupname ( ptsToPin ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( on ) boundtype ( usebbox ) size ( 1 0.01 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock Points_To_Pin -*
chautoscope Points_To_Pin -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Points_To_Pin
opexprlanguage -s hscript Points_To_Pin
opuserdata -n '___Version___' -v '21.0.440' Points_To_Pin

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 5.5308400000000004 -y -3.8141099999999999 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( max ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( on ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node matchsize3 (Sop/matchsize)
opadd -e -n matchsize matchsize3
oplocate -x 5.5308400000000004 -y -6.8738299999999999 matchsize3
opspareds "" matchsize3
opparm matchsize3 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( on ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize3 -*
chautoscope matchsize3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize3
opexprlanguage -s hscript matchsize3
opuserdata -n '___Version___' -v '' matchsize3

# Node object_merge2 (Sop/object_merge)
opadd -e -n object_merge object_merge2
oplocate -x -1.5397700000000001 -y -11.1624 object_merge2
opspareds "" object_merge2
opparm object_merge2  numobj ( 1 )
opparm -V 21.0.440 object_merge2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../OUT_BELL ) group1 ( "" ) expand1 ( off )
chlock object_merge2 -*
chautoscope object_merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge2
opexprlanguage -s hscript object_merge2
opuserdata -n '___Version___' -v '21.0.440' object_merge2

# Node OUT_VEINS (Sop/null)
opadd -e -n null OUT_VEINS
oplocate -x -1.5385200000000001 -y -22.2682 OUT_VEINS
opspareds "" OUT_VEINS
opparm -V 21.0.440 OUT_VEINS copyinput ( on ) cacheinput ( off )
chlock OUT_VEINS -*
chautoscope OUT_VEINS -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT_VEINS
opexprlanguage -s hscript OUT_VEINS
opuserdata -n '___Version___' -v '21.0.440' OUT_VEINS

# Node remesh2 (Sop/remesh::2.0)
opadd -e -n remesh::2.0 remesh2
oplocate -x -1.5385200000000001 -y -12.1655 remesh2
opspareds "" remesh2
opparm -V 21.0.440 remesh2 group ( "" ) hard_edges ( "" ) hard_points ( "" ) hardenuvseams ( off ) uvattriv ( uv ) meshing ( 0 ) iterations ( 2 ) smoothing ( 0.13 ) inputptsonly ( off ) detachfromnongroup ( off ) recomputenormals ( on ) sizinggroup ( 0 ) sizing ( uniform ) targetsize ( 0.031 ) usemaxsize ( on ) maxsize ( 0.059 ) useminsize ( off ) minsize ( 0.1 ) density ( 3.85 ) gradation ( 0.25 ) sizingattribs ( 0 ) usemeshsizeattrib ( off ) meshsizeattrib ( targetmeshsize ) useminsizeattrib ( off ) minsizeattrib ( minmeshsize ) usemaxsizeattrib ( off ) maxsizeattrib ( maxmeshsize ) outputattribs ( 0 ) useouthardedgesgroup ( off ) outhardedgesgroup ( hardedges ) useoutmeshsizeattrib ( off ) outmeshsizeattrib ( meshsize ) useoutmeshqualityattrib ( off ) outmeshqualityattrib ( meshquality )
chlock remesh2 -*
chautoscope remesh2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remesh2
opexprlanguage -s hscript remesh2
opuserdata -n '___Version___' -v '21.0.440' remesh2

# Node Starting_Points (Sop/groupcreate)
opadd -e -n groupcreate Starting_Points
oplocate -x -1.5385200000000001 -y -15.1655 Starting_Points
opspareds "" Starting_Points
chblockbegin
chadd -t 0 0 Starting_Points percent
chkey -t 0 -v 100 -m 0 -a 0 -A 0 -T a  -F 'ch("../CONTROLLER/startPtsPct")' Starting_Points/percent
chblockend
opparm -V 21.0.440 Starting_Points groupname ( startPts ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( on ) boundtype ( usebbox ) size ( 1 0.1 1 ) t ( 0 -0.05 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( on ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( percent )
chlock Starting_Points -*
chautoscope Starting_Points -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Starting_Points
opexprlanguage -s hscript Starting_Points
opuserdata -n '___Version___' -v '21.0.440' Starting_Points

# Node matchsize4 (Sop/matchsize)
opadd -e -n matchsize matchsize4
oplocate -x -1.5385200000000001 -y -13.1655 matchsize4
opspareds "" matchsize4
opparm matchsize4 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( max ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( on ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize4 -*
chautoscope matchsize4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize4
opexprlanguage -s hscript matchsize4
opuserdata -n '___Version___' -v '' matchsize4

# Node matchsize5 (Sop/matchsize)
opadd -e -n matchsize matchsize5
oplocate -x -1.5385200000000001 -y -17.165500000000002 matchsize5
opspareds "" matchsize5
opparm matchsize5 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( on ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize5 -*
chautoscope matchsize5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize5
opexprlanguage -s hscript matchsize5
opuserdata -n '___Version___' -v '' matchsize5

# Node End_Points (Sop/groupcreate)
opadd -e -n groupcreate End_Points
oplocate -x -1.5385200000000001 -y -16.1007 End_Points
opspareds "" End_Points
chblockbegin
chadd -t 0 0 End_Points percent
chkey -t 0 -v 50 -m 0 -a 0 -A 0 -T a  -F 'ch("../CONTROLLER/End_Points_Percent")' End_Points/percent
chblockend
opparm -V 21.0.440 End_Points groupname ( endPoints ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( on ) boundtype ( usebbox ) size ( 2 0.1 2 ) t ( 0 -0.4 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( on ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( percent )
chlock End_Points -*
chautoscope End_Points -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off End_Points
opexprlanguage -s hscript End_Points
opuserdata -n '___Version___' -v '21.0.440' End_Points

# Node findshortestpath1 (Sop/findshortestpath)
opadd -e -n findshortestpath findshortestpath1
oplocate -x -1.5385200000000001 -y -18.165500000000002 findshortestpath1
opspareds "" findshortestpath1
opparm -V 21.0.440 findshortestpath1 startpts ( endPoints ) endpts ( startPts ) enableadjattrib ( off ) adjattrib ( neighbours ) stdswitcher ( 0 0 0 ) outputpaths ( on ) multiplicity ( eachtoany ) keep ( off ) enableoutputcost ( on ) outputcost ( cost ) enableoutputprevptnum ( off ) outputprevptnum ( prevpt ) enableoutputptnum ( on ) outputptnum ( origpt ) enablepathsgroup ( off ) pathsgroup ( paths ) enableoutputstartpt ( off ) outputstartpt ( startpt ) enableoutputendpt ( off ) outputendpt ( endpt ) enableoutputpathcost ( off ) outputpathcost ( pathcost ) enablemaxcost ( off ) maxcost ( 10 ) enablecost ( off ) cost ( "" ) enableprimcost ( off ) primcost ( "" ) omitdistance ( off ) considerturning ( off ) enableangularcost ( off ) angularcost ( "" ) enablecustomcost ( off ) customcost ( 0 ) enableprimcustomcost ( off ) overrideheuristic ( off ) heuristic ( 0 ) enableprimgroup ( off ) primgroup ( "" ) enabledirectedprims ( off ) directedprims ( "" ) enableavoidedges ( off ) avoidedges ( "" )
chlock findshortestpath1 -*
chautoscope findshortestpath1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off findshortestpath1
opexprlanguage -s hscript findshortestpath1
opuserdata -n '___Version___' -v '21.0.440' findshortestpath1

# Node object_merge3 (Sop/object_merge)
opadd -e -n object_merge object_merge3
oplocate -x 6.6123399999999997 -y -21.265799999999999 object_merge3
opspareds "" object_merge3
opparm object_merge3  numobj ( 5 )
opparm -V 21.0.440 object_merge3 numobj ( 5 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../OUT_BELL ) group1 ( "" ) expand1 ( off ) enable2 ( on ) objpath2 ( ../OUT_ARMS ) group2 ( "" ) expand2 ( off ) enable3 ( on ) objpath3 ( ../OUT_VEINS ) group3 ( "" ) expand3 ( off ) enable4 ( on ) objpath4 ( ../OUT_ORGANS ) group4 ( "" ) expand4 ( off ) enable5 ( on ) objpath5 ( ../OUT_TENTACLES ) group5 ( "" ) expand5 ( off )
chlock object_merge3 -*
chautoscope object_merge3 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge3
opexprlanguage -s hscript object_merge3
opuserdata -n '___Version___' -v '21.0.440' object_merge3

# Node smooth1 (Sop/smooth::2.0)
opadd -e -n smooth::2.0 smooth1
oplocate -x -1.5385200000000001 -y -19.165500000000002 smooth1
opspareds "" smooth1
opparm -V 21.0.440 smooth1 group ( "" ) contrainedboundary ( groupboundary ) constrainedpoints ( "" ) attributes ( P ) useweightattribute ( off ) weightattribute ( weight ) method ( uniform ) strength ( 10 ) filterquality ( 3 ) updateaffectednmls ( off )
chlock smooth1 -*
chautoscope smooth1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off smooth1
opexprlanguage -s hscript smooth1
opuserdata -n '___Version___' -v '21.0.440' smooth1

# Node timeshift2 (Sop/timeshift)
opadd -e -n timeshift timeshift2
oplocate -x -1.5385200000000001 -y -14.174099999999999 timeshift2
opspareds "" timeshift2
chblockbegin
chadd -t 0 0 timeshift2 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift2/time
chadd -t 0 0 timeshift2 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift2/frange1
chadd -t 0 0 timeshift2 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift2/frange2
chadd -t 0 0 timeshift2 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift2/trange1
chadd -t 0 0 timeshift2 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift2/trange2
chblockend
opparm -V 21.0.440 timeshift2 method ( byframe ) frame ( 1 ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift2 -*
chautoscope timeshift2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift2
opexprlanguage -s hscript timeshift2
opuserdata -n '___Version___' -v '21.0.440' timeshift2

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x -1.5385200000000001 -y -20.165500000000002 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 4 )
opparm -V 21.0.440 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( tube ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.002 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( on ) scaleramp ( 4 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 0 ) scaleramp1interp ( linear ) scaleramp2pos ( 0.2945402264595032 ) scaleramp2value ( 0.6052631735801697 ) scaleramp2interp ( catmull-rom ) scaleramp3pos ( 0.5704023241996765 ) scaleramp3value ( 0.8684210777282715 ) scaleramp3interp ( catmull-rom ) scaleramp4pos ( 1 ) scaleramp4value ( 1 ) scaleramp4interp ( bezier )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '21.0.440' sweep1

# Node pointdeform2 (Sop/pointdeform)
opadd -e -n pointdeform pointdeform2
oplocate -x -1.5385200000000001 -y -21.165500000000002 pointdeform2
opspareds "" pointdeform2
opparm pointdeform2 group ( "" ) mode ( capturedeform ) folder0 ( 0 ) radius ( 0.1 ) minpt ( 1 ) maxpt ( 100 ) pieceattrib ( "" ) preseparatepieces ( on ) folder1 ( 0 ) rigidprojection ( on ) enablemask ( off ) mask ( 1 ) maskscalemode ( none ) maskattrib ( mask ) updateaffectednmls ( on ) attribs ( * ) delcaptatr ( on )
chlock pointdeform2 -*
chautoscope pointdeform2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off pointdeform2
opexprlanguage -s hscript pointdeform2
opuserdata -n '___Version___' -v '' pointdeform2

# Node object_merge4 (Sop/object_merge)
opadd -e -n object_merge object_merge4
oplocate -x 1.2312000000000001 -y -18.504999999999999 object_merge4
opspareds "" object_merge4
opparm object_merge4  numobj ( 1 )
opparm -V 21.0.440 object_merge4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../OUT_BELL ) group1 ( "" ) expand1 ( off )
chlock object_merge4 -*
chautoscope object_merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge4
opexprlanguage -s hscript object_merge4
opuserdata -n '___Version___' -v '21.0.440' object_merge4

# Node timeshift3 (Sop/timeshift)
opadd -e -n timeshift timeshift3
oplocate -x -0.078990199999999997 -y -19.584900000000001 timeshift3
opspareds "" timeshift3
chblockbegin
chadd -t 0 0 timeshift3 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift3/time
chadd -t 0 0 timeshift3 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift3/frange1
chadd -t 0 0 timeshift3 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift3/frange2
chadd -t 0 0 timeshift3 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift3/trange1
chadd -t 0 0 timeshift3 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift3/trange2
chblockend
opparm -V 21.0.440 timeshift3 method ( byframe ) frame ( 1 ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift3 -*
chautoscope timeshift3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift3
opexprlanguage -s hscript timeshift3
opuserdata -n '___Version___' -v '21.0.440' timeshift3

# Node line2 (Sop/line)
opadd -e -n line line2
oplocate -x 14.132 -y -0.288188 line2
opspareds "" line2
opparm -V 21.0.440 line2 type ( poly ) origin ( 0 0 0 ) dir ( 1 0 0 ) dist ( 1 ) points ( 50 ) order ( 4 )
chlock line2 -*
chautoscope line2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off line2
opexprlanguage -s hscript line2
opuserdata -n '___Version___' -v '21.0.440' line2

# Node OUT_ORGANS (Sop/null)
opadd -e -n null OUT_ORGANS
oplocate -x 14.132 -y -8.6210100000000001 OUT_ORGANS
opspareds "" OUT_ORGANS
opparm -V 21.0.440 OUT_ORGANS copyinput ( on ) cacheinput ( off )
chlock OUT_ORGANS -*
chautoscope OUT_ORGANS -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT_ORGANS
opexprlanguage -s hscript OUT_ORGANS
opuserdata -n '___Version___' -v '21.0.440' OUT_ORGANS

# Node bend1 (Sop/bend)
opadd -e -n bend bend1
oplocate -x 13.971399999999999 -y -1.51831 bend1
opspareds "" bend1
opparm bend1  taperprofile ( 1 )
opparm bend1 group ( "" ) grouptype ( guess ) mask ( bend_attrib ) maskmode ( maskoff ) folder1 ( 0 0 ) dodeform ( on ) limit_deformation ( on ) symmetricdeformation ( off ) enablebend ( on ) bendfolder ( 1 ) bendmode ( angle ) bend ( 270 ) bendscalemode_angle ( none ) goaldir ( 0 0 1 ) bendscalemode_dir ( none ) bend_attrib ( bend_attrib ) enabletwist ( off ) twistfolder ( 0 ) twist ( 0 ) twistscalemode ( none ) twist_attrib ( twist_attrib ) continuoustwist ( off ) enablelengthscale ( off ) lengthscalefolder ( 0 ) preservevolume ( off ) lengthscale ( 1 ) lengthscalescalemode ( none ) lengthscale_attrib ( lengthscale_attrib ) enabletaper ( off ) taperfolder ( 0 ) taperaxes ( 3 ) tapermode ( linear ) taper ( 1 ) taperscalemode ( none ) taper_attrib ( taper_attrib ) squish ( 1 ) squishscalemode ( none ) squishpivot ( 0.5 ) squish_attrib ( squish_attrib ) enableramp ( off ) taperprofile ( 1 ) folder0 ( 1 ) upvectorcontrol ( custom ) up ( 0 0 1 ) upangle ( 0 ) setcaptureregion ( 0 ) origin ( 0 0 0 ) dir ( 1 0 0 ) length ( 1 ) enableoutattrib ( off ) outattrib ( capture ) userest ( off ) attribs ( * ) updateaffectednmls ( off ) vlength ( on ) derivative_stepsize ( 0.01 ) taperprofile1pos ( 0 ) taperprofile1value ( 1 ) taperprofile1interp ( linear )
chlock bend1 -*
chautoscope bend1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bend1
opexprlanguage -s hscript bend1
opuserdata -n '___Version___' -v '' bend1
opuserdata -n '___toolcount___' -v '4' bend1
opuserdata -n '___toolid___' -v 'geometry_lineartaper' bend1

# Node matchsize6 (Sop/matchsize)
opadd -e -n matchsize matchsize6
oplocate -x 13.971399999999999 -y -2.51831 matchsize6
opspareds "" matchsize6
opparm matchsize6 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( min ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize6 -*
chautoscope matchsize6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize6
opexprlanguage -s hscript matchsize6
opuserdata -n '___Version___' -v '' matchsize6

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 14.132 -y -3.51831 transform3
opspareds "" transform3
opparm -V 21.0.440 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0.06 0 0.06 ) r ( 0 0 0 ) s ( 0.7 0.7 0.7 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '21.0.440' transform3

# Node copy2 (Sop/copyxform)
opadd -e -n copyxform copy2
oplocate -x 14.132 -y -5.5183099999999996 copy2
opspareds "" copy2
chblockbegin
chadd -t 0 0 copy2 ry
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '360/ch("ncy")' copy2/ry
chblockend
opparm -V 21.0.440 copy2 sourcegroup ( "" ) sourcegrouptype ( guess ) ncy ( 4 ) pack ( off ) pivot ( centroid ) viewportlod ( full ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 ry 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) newgroups ( off ) newgroupprefix ( copyGroup ) docopyattrib ( off ) copyattrib ( copynum )
chlock copy2 -*
chautoscope copy2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copy2
opexprlanguage -s hscript copy2
opuserdata -n '___Version___' -v '21.0.440' copy2

# Node sweep2 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep2
oplocate -x 14.132 -y -4.5183099999999996 sweep2
opspareds "" sweep2
opparm sweep2  scaleramp ( 43 )
opparm -V 21.0.440 sweep2 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( tube ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.024 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( on ) scaleramp ( 43 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 0 ) scaleramp1interp ( bezier ) scaleramp2pos ( 0.004414764698594809 ) scaleramp2value ( 0.15363381803035736 ) scaleramp2interp ( bezier ) scaleramp3pos ( 0.010227780789136887 ) scaleramp3value ( 1.6735256910324097 ) scaleramp3interp ( bezier ) scaleramp4pos ( 0.04885057359933853 ) scaleramp4value ( 1.779952883720398 ) scaleramp4interp ( bezier ) scaleramp5pos ( 0.07504544407129288 ) scaleramp5value ( 1.8521342277526855 ) scaleramp5interp ( bezier ) scaleramp6pos ( 0.098287433385849 ) scaleramp6value ( 1.4510530233383179 ) scaleramp6interp ( bezier ) scaleramp7pos ( 0.13793103396892548 ) scaleramp7value ( 1.7168153524398804 ) scaleramp7interp ( bezier ) scaleramp8pos ( 0.16522888839244843 ) scaleramp8value ( 1.8998135328292847 ) scaleramp8interp ( bezier ) scaleramp9pos ( 0.18772666156291962 ) scaleramp9value ( 1.5929226875305176 ) scaleramp9interp ( bezier ) scaleramp10pos ( 0.18965516984462738 ) scaleramp10value ( 1.589643955230713 ) scaleramp10interp ( bezier ) scaleramp11pos ( 0.22634397447109222 ) scaleramp11value ( 1.527267575263977 ) scaleramp11interp ( bezier ) scaleramp12pos ( 0.24608364701271057 ) scaleramp12value ( 1.715927004814148 ) scaleramp12interp ( bezier ) scaleramp13pos ( 0.2902298867702484 ) scaleramp13value ( 1.7727067470550537 ) scaleramp13interp ( bezier ) scaleramp14pos ( 0.2926162779331207 ) scaleramp14value ( 1.7757760286331177 ) scaleramp14interp ( bezier ) scaleramp15pos ( 0.3467351496219635 ) scaleramp15value ( 1.522897720336914 ) scaleramp15interp ( bezier ) scaleramp16pos ( 0.34913793206214905 ) scaleramp16value ( 1.5260580778121948 ) scaleramp16interp ( bezier ) scaleramp17pos ( 0.3620436489582062 ) scaleramp17value ( 1.5430327653884888 ) scaleramp17interp ( bezier ) scaleramp18pos ( 0.41377365589141846 ) scaleramp18value ( 1.3412256240844727 ) scaleramp18interp ( bezier ) scaleramp19pos ( 0.4267241358757019 ) scaleramp19value ( 1.3603692054748535 ) scaleramp19interp ( bezier ) scaleramp20pos ( 0.44178223609924316 ) scaleramp20value ( 1.382628321647644 ) scaleramp20interp ( bezier ) scaleramp21pos ( 0.45662620663642883 ) scaleramp21value ( 1.407369613647461 ) scaleramp21interp ( bezier ) scaleramp22pos ( 0.4712643623352051 ) scaleramp22value ( 1.4336845874786377 ) scaleramp22interp ( bezier ) scaleramp23pos ( 0.4715803563594818 ) scaleramp23value ( 1.4342526197433472 ) scaleramp23interp ( bezier ) scaleramp24pos ( 0.5036687850952148 ) scaleramp24value ( 1.6821608543395996 ) scaleramp24interp ( bezier ) scaleramp25pos ( 0.5043103694915771 ) scaleramp25value ( 1.683325171470642 ) scaleramp25interp ( bezier ) scaleramp26pos ( 0.5833232998847961 ) scaleramp26value ( 1.8267220258712769 ) scaleramp26interp ( bezier ) scaleramp27pos ( 0.6648293733596802 ) scaleramp27value ( 1.7040072679519653 ) scaleramp27interp ( bezier ) scaleramp28pos ( 0.6695402264595032 ) scaleramp28value ( 1.7401843070983887 ) scaleramp28interp ( bezier ) scaleramp29pos ( 0.6776660680770874 ) scaleramp29value ( 1.802586555480957 ) scaleramp29interp ( bezier ) scaleramp30pos ( 0.7428684234619141 ) scaleramp30value ( 1.4196141958236694 ) scaleramp30interp ( bezier ) scaleramp31pos ( 0.8146551847457886 ) scaleramp31value ( 1.430604338645935 ) scaleramp31interp ( bezier ) scaleramp32pos ( 0.8448275923728943 ) scaleramp32value ( 1.435219168663025 ) scaleramp32interp ( bezier ) scaleramp33pos ( 0.8788502216339111 ) scaleramp33value ( 1.756960391998291 ) scaleramp33interp ( bezier ) scaleramp34pos ( 0.897988498210907 ) scaleramp34value ( 1.6425458192825317 ) scaleramp34interp ( bezier ) scaleramp35pos ( 0.9156706929206848 ) scaleramp35value ( 1.5368361473083496 ) scaleramp35interp ( bezier ) scaleramp36pos ( 0.9384787678718567 ) scaleramp36value ( 1.6574264764785767 ) scaleramp36interp ( bezier ) scaleramp37pos ( 0.9482758641242981 ) scaleramp37value ( 1.5998430252075195 ) scaleramp37interp ( bezier ) scaleramp38pos ( 0.9856321811676025 ) scaleramp38value ( 1.3802753686904907 ) scaleramp38interp ( bezier ) scaleramp39pos ( 0.9880970120429993 ) scaleramp39value ( 1.3836431503295898 ) scaleramp39interp ( bezier ) scaleramp40pos ( 0.9942528605461121 ) scaleramp40value ( 1.042946696281433 ) scaleramp40interp ( bezier ) scaleramp41pos ( 0.9999899864196777 ) scaleramp41value ( 0.7254238128662109 ) scaleramp41interp ( bezier ) scaleramp42pos ( 0.9999989867210388 ) scaleramp42value ( 0.07801930606365204 ) scaleramp42interp ( bezier ) scaleramp43pos ( 1 ) scaleramp43value ( 0 ) scaleramp43interp ( linear )
chlock sweep2 -*
chautoscope sweep2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep2
opexprlanguage -s hscript sweep2
opuserdata -n '___Version___' -v '21.0.440' sweep2

# Node object_merge5 (Sop/object_merge)
opadd -e -n object_merge object_merge5
oplocate -x 18.6326 -y -2.0291899999999998 object_merge5
opspareds "" object_merge5
opparm object_merge5  numobj ( 1 )
opparm -V 21.0.440 object_merge5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../OUT_BELL ) group1 ( "" ) expand1 ( off )
chlock object_merge5 -*
chautoscope object_merge5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge5
opexprlanguage -s hscript object_merge5
opuserdata -n '___Version___' -v '21.0.440' object_merge5

# Node timeshift4 (Sop/timeshift)
opadd -e -n timeshift timeshift4
oplocate -x 17.094100000000001 -y -4.3514900000000001 timeshift4
opspareds "" timeshift4
chblockbegin
chadd -t 0 0 timeshift4 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift4/time
chadd -t 0 0 timeshift4 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift4/frange1
chadd -t 0 0 timeshift4 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift4/frange2
chadd -t 0 0 timeshift4 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift4/trange1
chadd -t 0 0 timeshift4 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift4/trange2
chblockend
opparm -V 21.0.440 timeshift4 method ( byframe ) frame ( 1 ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift4 -*
chautoscope timeshift4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift4
opexprlanguage -s hscript timeshift4
opuserdata -n '___Version___' -v '21.0.440' timeshift4

# Node extractcentroid2 (Sop/extractcentroid)
opadd -e -n extractcentroid extractcentroid2
oplocate -x 18.633800000000001 -y -2.9719699999999998 extractcentroid2
opspareds "" extractcentroid2
opparm -V 21.0.440 extractcentroid2 partitiontype ( detail ) pieceattrib ( name ) class ( prim ) method ( com ) output ( points ) centroidattrib ( centroid ) transferattributes ( "" ) transfergroups ( "" )
chlock extractcentroid2 -*
chautoscope extractcentroid2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extractcentroid2
opexprlanguage -s hscript extractcentroid2
opuserdata -n '___Version___' -v '21.0.440' extractcentroid2

# Node pointdeform3 (Sop/pointdeform)
opadd -e -n pointdeform pointdeform3
oplocate -x 14.132 -y -6.5183099999999996 pointdeform3
opspareds "" pointdeform3
opparm pointdeform3 group ( "" ) mode ( capturedeform ) folder0 ( 0 ) radius ( 0.1 ) minpt ( 1 ) maxpt ( 100 ) pieceattrib ( "" ) preseparatepieces ( on ) folder1 ( 0 ) rigidprojection ( on ) enablemask ( off ) mask ( 1 ) maskscalemode ( none ) maskattrib ( mask ) updateaffectednmls ( on ) attribs ( * ) delcaptatr ( on )
chlock pointdeform3 -*
chautoscope pointdeform3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off pointdeform3
opexprlanguage -s hscript pointdeform3
opuserdata -n '___Version___' -v '' pointdeform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 14.132 -y -7.5183099999999996 transform4
opspareds "" transform4
opparm -V 21.0.440 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0.1 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '21.0.440' transform4

# Node line3 (Sop/line)
opadd -e -n line line3
oplocate -x 9.3869263510040337 -y -15.554932475499873 line3
opspareds "" line3
chblockbegin
chadd -t 0 0 line3 originy
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '-ch("dist")' line3/originy
chblockend
opparm -V 21.0.440 line3 type ( poly ) origin ( 0 originy 0 ) dir ( 0 1 0 ) dist ( 0.3 ) points ( 50 ) order ( 4 )
chlock line3 -*
chautoscope line3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off line3
opexprlanguage -s hscript line3
opuserdata -n '___Version___' -v '21.0.440' line3

# Node OUT_TENTACLES (Sop/null)
opadd -e -n null OUT_TENTACLES
oplocate -x 11.241076351004033 -y -24.875032475499872 OUT_TENTACLES
opspareds "" OUT_TENTACLES
opparm -V 21.0.440 OUT_TENTACLES copyinput ( on ) cacheinput ( off )
chlock OUT_TENTACLES -*
chautoscope OUT_TENTACLES -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT_TENTACLES
opexprlanguage -s hscript OUT_TENTACLES
opuserdata -n '___Version___' -v '21.0.440' OUT_TENTACLES

# Node object_merge6 (Sop/object_merge)
opadd -e -n object_merge object_merge6
oplocate -x 11.222899999999999 -y -10.716900000000001 object_merge6
opspareds "" object_merge6
opparm object_merge6  numobj ( 1 )
opparm -V 21.0.440 object_merge6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../OUT_BELL_PREEXTRUDE ) group1 ( "" ) expand1 ( off )
chlock object_merge6 -*
chautoscope object_merge6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge6
opexprlanguage -s hscript object_merge6
opuserdata -n '___Version___' -v '21.0.440' object_merge6

# Node matchsize7 (Sop/matchsize)
opadd -e -n matchsize matchsize7
oplocate -x 11.2242 -y -12.720000000000001 matchsize7
opspareds "" matchsize7
opparm matchsize7 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( on ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize7 -*
chautoscope matchsize7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize7
opexprlanguage -s hscript matchsize7
opuserdata -n '___Version___' -v '' matchsize7

# Node Tentacle_Points (Sop/groupcreate)
opadd -e -n groupcreate Tentacle_Points
oplocate -x 11.2242 -y -13.720000000000001 Tentacle_Points
opspareds "" Tentacle_Points
chblockbegin
chadd -t 0 0 Tentacle_Points percent
chkey -t 0 -v 50 -m 0 -a 0 -A 0 -T a  -F 'ch("../CONTROLLER/Tentacles_Percent")' Tentacle_Points/percent
chblockend
opparm -V 21.0.440 Tentacle_Points groupname ( tentPts ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( on ) boundtype ( usebbox ) size ( 2 0.02 2 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( on ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( percent )
chlock Tentacle_Points -*
chautoscope Tentacle_Points -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Tentacle_Points
opexprlanguage -s hscript Tentacle_Points
opuserdata -n '___Version___' -v '21.0.440' Tentacle_Points

# Node copytopoints1 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints1
oplocate -x 11.106676351004033 -y -17.224132475499871 copytopoints1
opspareds "" copytopoints1
opparm copytopoints1  targetattribs ( 3 )
opparm -V 21.0.440 copytopoints1 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( tentPts ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( off ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( none ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints1 -*
chautoscope copytopoints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints1
opexprlanguage -s hscript copytopoints1
opuserdata -n '___Version___' -v '21.0.440' copytopoints1

# Node matchsize8 (Sop/matchsize)
opadd -e -n matchsize matchsize8
oplocate -x 11.2242 -y -14.720000000000001 matchsize8
opspareds "" matchsize8
opparm matchsize8 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( on ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize8 -*
chautoscope matchsize8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize8
opexprlanguage -s hscript matchsize8
opuserdata -n '___Version___' -v '' matchsize8

# Node groupexpression1 (Sop/groupexpression)
opadd -e -n groupexpression groupexpression1
oplocate -x 11.241076351004033 -y -19.772332475499869 groupexpression1
opspareds "" groupexpression1
opparm groupexpression1  expressions ( 1 )
opparm groupexpression1 folder0 ( 0 0 0 ) grouptype ( point ) expressions ( 1 ) vex_cwdpath ( . ) vex_matchattrib ( id ) updatecode ( 0 ) generatedcode ( "" ) enable1 ( on ) groupname1 ( tentPtsToPin ) snippet1 ( 'vertexprimindex(0, @vtxnum) == primvertexcount(0, @primnum) - 1\n' ) mergeop1 ( replace )
chlock groupexpression1 -*
chautoscope groupexpression1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupexpression1
opexprlanguage -s hscript groupexpression1
opuserdata -n '___Version___' -v '' groupexpression1

# Node OUT_BELL_PREEXTRUDE (Sop/null)
opadd -e -n null OUT_BELL_PREEXTRUDE
oplocate -x 2.4571399999999999 -y -9.3126499999999997 OUT_BELL_PREEXTRUDE
opspareds "" OUT_BELL_PREEXTRUDE
opparm -V 21.0.440 OUT_BELL_PREEXTRUDE copyinput ( on ) cacheinput ( off )
chlock OUT_BELL_PREEXTRUDE -*
chautoscope OUT_BELL_PREEXTRUDE -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT_BELL_PREEXTRUDE
opexprlanguage -s hscript OUT_BELL_PREEXTRUDE
opuserdata -n '___Version___' -v '21.0.440' OUT_BELL_PREEXTRUDE

# Node vellumconstraints3 (Sop/vellumconstraints)
opadd -e -n vellumconstraints vellumconstraints3
oplocate -x 11.241076351004033 -y -20.772332475499869 vellumconstraints3
opspareds "" vellumconstraints3
opparm -V 2 vellumconstraints3 constrainttype ( pin ) stretchtype ( distance ) bendtype ( angle ) preservevol ( off ) linear ( normarap ) folder8 ( 0 ) grouptype ( points ) group ( tentPtsToPin ) triangulation ( alternating ) sepparm ( ) domass ( off ) mass ( 0.1 ) density ( 0.1 ) scaledensitymode ( none ) scaledensityattrib ( density ) dothickness ( off ) thickness ( 0.01 ) thicknessscale ( 0.25 ) scalethicknessmode ( none ) scalethicknessattrib ( thickness ) vizthickness ( off ) sepparm2 ( ) piecemode ( connectivity ) neighbordist ( 2 ) pieceattrib ( class ) dolayer ( off ) layer ( 0 ) computeorient ( on ) orientframe ( 1 ) showguide ( on ) folder7 ( 0 ) targetgrouptype ( prims ) targetgroup ( "" ) targetpath ( "" ) doattachframe ( off ) attachframe ( 1 ) folder9 ( 0 ) dragnormal ( 10 ) dragtangent ( 0.1 ) folder3 ( 0 ) pingroup ( "" ) pintype ( hard ) pinrotation ( same ) matchanimation ( on ) folder2 ( 0 ) useclosestpt ( on ) useclosestprim ( on ) maxdistcheck ( off ) maxdist ( 0 ) dosliding ( off ) slidingrate ( 1 ) slidingscalemode ( none ) slidingattrib ( slidingscale ) folder6 ( 0 ) glue_usecluster ( off ) glue_clusterattrib ( cluster ) glue_minradius ( 0 ) glue_radius ( 0.1 ) glue_numpt ( 10 ) glue_searchpref ( nearest ) glue_constraintsperpt ( 1 ) glue_detach_chance ( 0 ) glue_point_chance ( 0 ) glue_seed ( 0 ) folder10 ( 0 ) strut_maxlen ( 100 ) strut_usedirattrib ( off ) strut_dirattrib ( N ) strut_invertnormal ( off ) strut_testnormals ( on ) strut_jitter ( 0.1 ) strut_constraintsperpt ( 1 ) strut_point_chance ( 0 ) strut_seed ( 0 ) strut_rayoff ( 0.01 ) folder0 ( 0 ) stretchstiffness ( 1 ) stretchstiffnessexp ( 10 ) stretchstiffnessscalemode ( none ) stretchstiffnessattrib ( stretchstiffness ) stretchstiffnessscale ( 1 ) stretchdampingratio ( 0.001 ) stretchdampingscalemode ( none ) stretchdampingattrib ( stretchdamping ) stretchdampingscale ( 1 ) stretchrestscale ( 1 ) docompress ( off ) compressstiffness ( 1 ) compressstiffnessexp ( 3 ) compressstiffnessscalemode ( none ) compressstiffnessattrib ( compressstiffness ) compressstiffnessscale ( 1 ) dotangent ( off ) tangentstiffness ( 1 ) tangentstiffnessexp ( 3 ) dostretchstiffnessdropoff ( off ) stretchstiffnessdropoff ( 0 ) stretchstiffnessdropoffdir ( decreasing ) dostretchstiffnessdropoffmin ( off ) stretchstiffnessdropoffmin ( 0 ) stretchanisotropy ( off ) folder12 ( 0 ) stretchwarpscale ( 1 ) stretchweftscale ( 1 ) stretchshearscale ( 1 ) materialuv ( materialuv ) dostretchvelblend ( off ) stretchvelblend ( 0.1 ) stretchvelblendscalemode ( none ) stretchvelblendattrib ( "" ) stretchplasticity ( off ) folder4 ( 0 ) stretchplasticthreshold ( 0.1 ) stretchplasticthresholdscalemode ( none ) stretchplasticthresholdattrib ( stretchplasticthreshold ) stretchplasticthresholdscale ( 1 ) stretchplasticthresholdratio ( on ) stretchplasticrate ( 1 ) stretchplasticratescalemode ( none ) stretchplasticrateattrib ( stretchplasticrate ) stretchplasticratescale ( 1 ) stretchplastichardening ( 1 ) stretchplastichardeningscalemode ( none ) stretchplastichardeningattrib ( stretchplastichardening ) stretchplastichardeningscale ( 1 ) dostretchgrp ( off ) stretchgrp ( stretch ) keepuniquestretch ( on ) folder1 ( 0 ) bendweld ( on ) bendcopystiffness ( on ) bendstiffness ( 1 ) bendstiffnessexp ( -1 ) bendstiffnessscalemode ( none ) bendstiffnessattrib ( bendstiffness ) bendstiffnessscale ( 1 ) benddampingratio ( 0.01 ) benddampingscalemode ( none ) benddampingattrib ( benddamping ) benddampingscale ( 1 ) bendrestscale ( 1 ) dobendstiffnessdropoff ( off ) bendstiffnessdropoff ( 0 ) bendstiffnessdropoffdir ( increasing ) dobendstiffnessdropoffmin ( off ) bendstiffnessdropoffmin ( 0 ) domaxbranchangle ( off ) maxbranchangle ( 10 ) bendplasticity ( off ) folder5 ( 0 ) bendplasticthreshold ( 10 ) bendplasticthresholdscalemode ( none ) bendplasticthresholdattrib ( bendplasticthreshold ) bendplasticthresholdscale ( 1 ) bendplasticrate ( 1 ) bendplasticratescalemode ( none ) bendplasticrateattrib ( bendplasticrate ) bendplasticratescale ( 1 ) bendplastichardening ( 1 ) bendplastichardeningscalemode ( none ) bendplastichardeningattrib ( bendplastichardening ) bendplastichardeningscale ( 1 ) dobendgrp ( off ) bendgrp ( bend ) keepuniquebend ( on ) folder11 ( 0 ) dobreaking ( off ) breakthreshold ( 0.1 ) breakscalemode ( none ) breakscaleattrib ( breakthresholdscale ) breakscale ( 1 ) breaktypeall ( stretchstress ) breaktypestretch ( stretchstress ) folder13 ( 0 ) attribpromote ( mean ) tag ( '$OS' ) statictopology ( off )
chlock vellumconstraints3 -*
chautoscope vellumconstraints3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vellumconstraints3
opexprlanguage -s hscript vellumconstraints3
opuserdata -n '___Version___' -v '2' vellumconstraints3

# Node vellumsolver2 (Sop/vellumsolver)
opadd -e -n vellumsolver vellumsolver2
oplocate -x 11.241076351004033 -y -22.772332475499869 vellumsolver2
opspareds "" vellumsolver2
opparm vellumsolver2  windshadow_maskfalloff ( 2 )
opparm -V 1 vellumsolver2 resimulate ( 0 ) startframe ( -200 ) folder0_1 ( 1 1 1 1 1 ) solvermode ( full ) timescale ( 1 ) dosubstep ( off ) substep ( 1 ) substeps ( 1 ) niter ( 100 ) smoothiter ( 10 ) folder4 ( 0 ) enablecollisions ( on ) doselfcollisions ( on ) useground ( off ) groundpos ( 0 0 0 ) collisionsiter ( 10 ) postcollisioniter ( 3 ) resolveall ( on ) resolveallmax ( 10 ) layershock ( 4 ) gravity ( 0 -0.3 0 ) dowind ( on ) wind ( 0 0 0 ) windspeed ( 1 ) winddrag ( 0.1 ) veldamping ( 0.08 ) folder12 ( 0 ) windshadow_type ( none ) windshadow_doexternal ( on ) windshadow_externalmask ( 1 ) windshadow_doself ( off ) windshadow_selfmask ( 1 ) windshadow_maxdistance ( 1 ) windshadow_raybias ( 0.0001 ) windshadow_coneangle ( 0 ) windshadow_samples ( 8 ) windshadow_maskfalloff ( 2 ) windshadow_doblur ( off ) windshadow_blur_iterations ( 4 ) windshadow_blur_influencetype ( connectivity ) windshadow_blur_proxrad ( 0.5 ) windshadow_blur_maxneigh ( 20 ) folder2 ( 0 ) static_threshold ( 0.5 ) dynamic_scale ( 0.1 ) sepparm ( ) friction ( on ) selffriction ( on ) static_sdfscale ( 1 ) dynamic_sdfscale ( 1 ) cacheenabled ( on ) cachemaxsize ( 5000 ) autoresim ( on ) simulationtype ( dynamic ) quasistaticframes ( 10 ) zerodynamics ( off ) targetmethod ( first ) targetpath ( "" ) integration ( secondorder ) thickness ( 0.01 ) folder10 ( 0 ) dosecondary ( off ) secondarygroup ( '@type==bend' ) secondaryfrequency ( 0.25 ) folder7 ( 0 ) domultipass ( off ) maxmultipass ( 10 ) disablestretchratio ( 0.5 ) folder5 ( 0 ) domaxaccel ( on ) maxaccel ( 30 ) accelfallback ( on ) limitaccel ( off ) limitdisplace ( off ) disablebrokenwelds ( off ) normalizestress ( on ) slidingmethod ( closest ) folder8 ( 0 ) doautosleep ( off ) sleep_velocitythreshold ( 0.01 ) sleep_delay ( 0.1 ) folder9 ( 0 ) grain_searchscale ( 2.5 ) grain_maxneighbor ( 20 ) grain_uniformradius ( on ) ignorepiece ( on ) repulsionweight ( 1 ) attractionweight ( 0 ) folder11 ( 0 ) fluid_searchscale ( 4 ) viscosity ( 5 ) collisionviscosity ( 0 ) viscositysolver ( implicit ) tol ( 0.001 ) maxviscosityiterations ( 500 ) surfacetension ( 0.0001 ) adhesion ( 0 ) dosort ( off ) sortinterval ( 20 ) folder6 ( 0 ) oclgraphcolor ( on ) oclneighborsearch ( on ) folder26_3 ( 0 ) savecheckpoints ( off ) checkpoint_basename ( '$HIPNAME.$OS' ) checkpoint_basedir ( '$HIP/geo' ) checkpoint_openbasedir ( 0 ) checkpoint_enableversion ( on ) checkpoint_version ( 1 ) labelparm8 ( '`chs("checkpoint_basedir")``ifs(ch("checkpoint_enableversion"), "/v"+chs("checkpoint_version"), "")`/`chs("checkpoint_basename")``ifs(ch("checkpoint_enableversion"), "_v"+chs("checkpoint_version"), "")`.\\$SF.sim' ) sepparm4 ( ) checkpoint_explicitcachensteps ( 0 ) checkpoint_explicitcachespacing ( 1 ) showcollision ( on ) showguide ( on ) folder0 ( 0 ) guide_showthickness ( off ) guide_thicknesscolor ( 0 0.9 0 ) guide_showthicknessextrude ( off ) guide_showfailedself ( off ) guide_failedself ( 0.9 0 0 ) guide_showfailedexternal ( off ) guide_failedexternal ( 0.9 0.45 0 ) guide_showwelds ( off ) guide_weldcolor ( 0 0.9 0.45 ) guide_colvisscale ( 1 ) folder1 ( 0 ) guide_usegroup ( off ) guide_constraintgroup ( "" ) guide_showpin ( off ) guide_pincolor ( 0.25 0 0.5 ) guide_showstitch ( off ) guide_stitchcolor ( 0.9 0.9 0 ) guide_showattach ( off ) guide_attachcolor ( 0 0.45 0.9 ) guide_constraintvisradius ( 0.01 ) folder3 ( 0 ) vis_mode ( none ) vis_displaygeo ( on ) vis_maxstretchstress ( 0.01 ) vis_maxbendstress ( 0.001 ) vis_maxstretchdistance ( 0.01 ) vis_maxstretchratio ( 0.1 ) vis_maxbendangle ( 5 ) vis_maxstretchplasticflow ( 1 ) vis_maxbendplasticflow ( 10 ) vis_maxvolumestress ( 0.01 ) vis_maxvolumedistance ( 0.0001 ) vis_maxvolumeratio ( 0.1 ) windshadow_maskfalloff1pos ( 0.8500000238418579 ) windshadow_maskfalloff1value ( 1 ) windshadow_maskfalloff1interp ( linear ) windshadow_maskfalloff2pos ( 0.9973856210708618 ) windshadow_maskfalloff2value ( 0 ) windshadow_maskfalloff2interp ( linear )
chlock vellumsolver2 -*
chautoscope vellumsolver2 -* +adhesion
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vellumsolver2
opexprlanguage -s hscript vellumsolver2
opuserdata -n '___Version___' -v '1' vellumsolver2

# Editable subnode
opcf vellumsolver2/dopnet1

# Node forces (Dop/subnet)
opadd -e -n subnet forces
oplocate -x 1.1293500000000001 -y 6.9049500000000004 forces
opspareds "" forces
opparm -V 21.0.440 forces
chlock forces -*
chautoscope forces -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off forces
opexprlanguage -s hscript forces
opuserdata -n '___Version___' -v '21.0.440' forces
opcf forces

# Node FORCE (Dop/subnetoutput)
opadd -e -n subnetoutput FORCE
oplocate -x 0.24560199999999999 -y 1.2003999999999999 FORCE
opspareds "" FORCE
opparm -V 21.0.440 FORCE outputidx ( 0 )
chlock FORCE -*
chautoscope FORCE -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off FORCE
opexprlanguage -s hscript FORCE
opuserdata -n '___Version___' -v '21.0.440' FORCE

# Node SOURCE (Dop/subnetoutput)
opadd -e -n subnetoutput SOURCE
oplocate -x 3.6071300000000002 -y 1.2904899999999999 SOURCE
opspareds "" SOURCE
opparm -V 21.0.440 SOURCE outputidx ( 1 )
chlock SOURCE -*
chautoscope SOURCE -*
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SOURCE
opexprlanguage -s hscript SOURCE
opuserdata -n '___Version___' -v '21.0.440' SOURCE

# Node popforce1 (Dop/popforce)
opadd -e -n popforce popforce1
oplocate -x 0.24560199999999999 -y 2.4277799999999998 popforce1
opspareds "" popforce1
opparm popforce1 activate ( 1 ) usegroup ( off ) partgroup ( "" ) showguide ( off ) guidecolor ( 1 0 0 ) force ( 0 0 0 ) ignoremass ( on ) uselocalforce ( off ) localforceexpression ( "" ) folder0 ( 0 0 0 ) amp ( 0.5 ) swirlsize ( 0.8 ) swirlscale ( 0.3 0.3 0.3 ) pulselength ( 1 ) rough ( 0.5 ) atten ( 1 ) turb ( 2 ) offset ( 0 0 0 0 ) uselocalnoise ( off ) localnoiseexpression ( "" ) bindgeo ( Geometry ) vex_cwdpath ( . ) bindinputmenu1 ( none ) bindgeoinput1 ( "" ) binddopinput1 ( "" ) bindinputmenu2 ( none ) bindgeoinput2 ( "" ) binddopinput2 ( "" ) bindinputmenu3 ( none ) bindgeoinput3 ( "" ) binddopinput3 ( "" ) bindinputmenu4 ( none ) bindgeoinput4 ( "" ) binddopinput4 ( "" )
chlock popforce1 -*
chautoscope popforce1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off popforce1
opexprlanguage -s hscript popforce1
opuserdata -n '___Version___' -v '' popforce1
opuserdata -n '___toolcount___' -v '2' popforce1
opuserdata -n '___toolid___' -v 'dynamics_popforce' popforce1

# Sticky Note __stickynote1
python -c 'hou.pwd().createStickyNote("__stickynote1")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setText("Wire POP Forces into FORCE to apply per-point forces.\n\nWire Vellum Constraint Properties and Vellum Rest Blend to update constraints dynamically.\n\nWire Vellum Constraints to build new constraints.\n\nWire Vellum Source DOPs to SOURCE to add new vellum geometry.")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setPosition(hou.Vector2(5.9, 2.55825))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setSize(hou.Vector2(4.80361, 3.02303))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setMinimized(False)'
oporder -e FORCE SOURCE popforce1 
opcf ..

# End of editable subnode
opcf ../..


# Node vellumconstraints4 (Sop/vellumconstraints)
opadd -e -n vellumconstraints vellumconstraints4
oplocate -x 11.241076351004033 -y -21.772332475499869 vellumconstraints4
opspareds "" vellumconstraints4
opparm -V 2 vellumconstraints4 constrainttype ( hair ) stretchtype ( distance ) bendtype ( angle ) preservevol ( off ) linear ( normarap ) folder8 ( 0 ) grouptype ( points ) group ( "" ) triangulation ( alternating ) sepparm ( ) domass ( off ) mass ( 0.1 ) density ( 0.1 ) scaledensitymode ( none ) scaledensityattrib ( density ) dothickness ( off ) thickness ( 0.01 ) thicknessscale ( 0.25 ) scalethicknessmode ( none ) scalethicknessattrib ( thickness ) vizthickness ( off ) sepparm2 ( ) piecemode ( connectivity ) neighbordist ( 2 ) pieceattrib ( class ) dolayer ( off ) layer ( 0 ) computeorient ( on ) orientframe ( 1 ) showguide ( on ) folder7 ( 0 ) targetgrouptype ( prims ) targetgroup ( "" ) targetpath ( "" ) doattachframe ( off ) attachframe ( 1 ) folder9 ( 0 ) dragnormal ( 100 ) dragtangent ( 0.1 ) folder3 ( 0 ) pingroup ( "" ) pintype ( hard ) pinrotation ( same ) matchanimation ( off ) folder2 ( 0 ) useclosestpt ( on ) useclosestprim ( on ) maxdistcheck ( off ) maxdist ( 0 ) dosliding ( off ) slidingrate ( 1 ) slidingscalemode ( none ) slidingattrib ( slidingscale ) folder6 ( 0 ) glue_usecluster ( off ) glue_clusterattrib ( cluster ) glue_minradius ( 0 ) glue_radius ( 0.1 ) glue_numpt ( 10 ) glue_searchpref ( nearest ) glue_constraintsperpt ( 1 ) glue_detach_chance ( 0 ) glue_point_chance ( 0 ) glue_seed ( 0 ) folder10 ( 0 ) strut_maxlen ( 100 ) strut_usedirattrib ( off ) strut_dirattrib ( N ) strut_invertnormal ( off ) strut_testnormals ( on ) strut_jitter ( 0.1 ) strut_constraintsperpt ( 1 ) strut_point_chance ( 0 ) strut_seed ( 0 ) strut_rayoff ( 0.01 ) folder0 ( 0 ) stretchstiffness ( 10000 ) stretchstiffnessexp ( 10 ) stretchstiffnessscalemode ( none ) stretchstiffnessattrib ( stretchstiffness ) stretchstiffnessscale ( 1 ) stretchdampingratio ( 0.1 ) stretchdampingscalemode ( none ) stretchdampingattrib ( stretchdamping ) stretchdampingscale ( 1 ) stretchrestscale ( 1 ) docompress ( off ) compressstiffness ( 1 ) compressstiffnessexp ( 3 ) compressstiffnessscalemode ( none ) compressstiffnessattrib ( compressstiffness ) compressstiffnessscale ( 1 ) dotangent ( off ) tangentstiffness ( 1 ) tangentstiffnessexp ( 3 ) dostretchstiffnessdropoff ( off ) stretchstiffnessdropoff ( 0 ) stretchstiffnessdropoffdir ( decreasing ) dostretchstiffnessdropoffmin ( off ) stretchstiffnessdropoffmin ( 0 ) stretchanisotropy ( off ) folder12 ( 0 ) stretchwarpscale ( 1 ) stretchweftscale ( 1 ) stretchshearscale ( 1 ) materialuv ( materialuv ) dostretchvelblend ( off ) stretchvelblend ( 0.1 ) stretchvelblendscalemode ( none ) stretchvelblendattrib ( "" ) stretchplasticity ( off ) folder4 ( 0 ) stretchplasticthreshold ( 0.1 ) stretchplasticthresholdscalemode ( none ) stretchplasticthresholdattrib ( stretchplasticthreshold ) stretchplasticthresholdscale ( 1 ) stretchplasticthresholdratio ( on ) stretchplasticrate ( 1 ) stretchplasticratescalemode ( none ) stretchplasticrateattrib ( stretchplasticrate ) stretchplasticratescale ( 1 ) stretchplastichardening ( 1 ) stretchplastichardeningscalemode ( none ) stretchplastichardeningattrib ( stretchplastichardening ) stretchplastichardeningscale ( 1 ) dostretchgrp ( off ) stretchgrp ( stretch ) keepuniquestretch ( on ) folder1 ( 0 ) bendweld ( on ) bendcopystiffness ( on ) bendstiffness ( 1 ) bendstiffnessexp ( -1 ) bendstiffnessscalemode ( none ) bendstiffnessattrib ( bendstiffness ) bendstiffnessscale ( 1 ) benddampingratio ( 0.01 ) benddampingscalemode ( none ) benddampingattrib ( benddamping ) benddampingscale ( 1 ) bendrestscale ( 1 ) dobendstiffnessdropoff ( off ) bendstiffnessdropoff ( 0 ) bendstiffnessdropoffdir ( increasing ) dobendstiffnessdropoffmin ( off ) bendstiffnessdropoffmin ( 0 ) domaxbranchangle ( off ) maxbranchangle ( 10 ) bendplasticity ( off ) folder5 ( 0 ) bendplasticthreshold ( 10 ) bendplasticthresholdscalemode ( none ) bendplasticthresholdattrib ( bendplasticthreshold ) bendplasticthresholdscale ( 1 ) bendplasticrate ( 1 ) bendplasticratescalemode ( none ) bendplasticrateattrib ( bendplasticrate ) bendplasticratescale ( 1 ) bendplastichardening ( 1 ) bendplastichardeningscalemode ( none ) bendplastichardeningattrib ( bendplastichardening ) bendplastichardeningscale ( 1 ) dobendgrp ( off ) bendgrp ( bend ) keepuniquebend ( on ) folder11 ( 0 ) dobreaking ( off ) breakthreshold ( 0.1 ) breakscalemode ( none ) breakscaleattrib ( breakthresholdscale ) breakscale ( 1 ) breaktypeall ( stretchstress ) breaktypestretch ( stretchstress ) folder13 ( 0 ) attribpromote ( mean ) tag ( '$OS' ) statictopology ( off )
chlock vellumconstraints4 -*
chautoscope vellumconstraints4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off vellumconstraints4
opexprlanguage -s hscript vellumconstraints4
opuserdata -n '___Version___' -v '2' vellumconstraints4

# Node timeshift5 (Sop/timeshift)
opadd -e -n timeshift timeshift5
oplocate -x 11.2242 -y -11.720000000000001 timeshift5
opspareds "" timeshift5
chblockbegin
chadd -t 0 0 timeshift5 time
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$T' timeshift5/time
chadd -t 0 0 timeshift5 frange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' timeshift5/frange1
chadd -t 0 0 timeshift5 frange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' timeshift5/frange2
chadd -t 0 0 timeshift5 trange1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TSTART' timeshift5/trange1
chadd -t 0 0 timeshift5 trange2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TEND' timeshift5/trange2
chblockend
opparm -V 21.0.440 timeshift5 method ( byframe ) frame ( 66 ) integerframe ( on ) time ( time ) rangeclamp ( none ) frange ( frange1 frange2 ) trange ( trange1 trange2 )
chlock timeshift5 -*
chautoscope timeshift5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off timeshift5
opexprlanguage -s hscript timeshift5
opuserdata -n '___Version___' -v '21.0.440' timeshift5

# Node pointdeform4 (Sop/pointdeform)
opadd -e -n pointdeform pointdeform4
oplocate -x 11.2242 -y -15.854799999999999 pointdeform4
opspareds "" pointdeform4
opparm pointdeform4 group ( "" ) mode ( capturedeform ) folder0 ( 0 ) radius ( 0.1 ) minpt ( 1 ) maxpt ( 100 ) pieceattrib ( "" ) preseparatepieces ( on ) folder1 ( 0 ) rigidprojection ( on ) enablemask ( off ) mask ( 1 ) maskscalemode ( none ) maskattrib ( mask ) updateaffectednmls ( on ) attribs ( * ) delcaptatr ( on )
chlock pointdeform4 -*
chautoscope pointdeform4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off pointdeform4
opexprlanguage -s hscript pointdeform4
opuserdata -n '___Version___' -v '' pointdeform4

# Node sweep3 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep3
oplocate -x 11.241076351004033 -y -23.772332475499869 sweep3
opspareds "" sweep3
opparm sweep3  scaleramp ( 7 )
opparm -V 21.0.440 sweep3 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( tube ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.461 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( grid ) capdivs ( 1 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( on ) scaleramp ( 7 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 0.23260867595672607 ) scaleramp2value ( 0.6052631735801697 ) scaleramp2interp ( bezier ) scaleramp3pos ( 0.34021738171577454 ) scaleramp3value ( 0.44736841320991516 ) scaleramp3interp ( bezier ) scaleramp4pos ( 0.8054347634315491 ) scaleramp4value ( 0.34210529923439026 ) scaleramp4interp ( bezier ) scaleramp5pos ( 0.9021739363670349 ) scaleramp5value ( 0.6052631735801697 ) scaleramp5interp ( linear ) scaleramp6pos ( 0.969565212726593 ) scaleramp6value ( 0.8947368264198303 ) scaleramp6interp ( bezier ) scaleramp7pos ( 1 ) scaleramp7value ( 0.5789473652839661 ) scaleramp7interp ( bezier )
chlock sweep3 -*
chautoscope sweep3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep3
opexprlanguage -s hscript sweep3
opuserdata -n '___Version___' -v '21.0.440' sweep3

# Node polyextrude2 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude2
oplocate -x 5.7333600000000002 -y -13.702299999999999 polyextrude2
opspareds "" polyextrude2
opparm polyextrude2  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 21.0.440 polyextrude2 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.01 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude2 -*
chautoscope polyextrude2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude2
opexprlanguage -s hscript polyextrude2
opuserdata -n '___Version___' -v '21.0.440' polyextrude2
oporder -e line1 bind_tip bend_main revolve1 matchsize1 fuse1 mountain1 transform1 polyextrude1 OUT_BELL CONTROLLER grid1 attribwrangle1 twist1 OUT_ARMS remesh1 transform2 copy1 pointdeform1 object_merge1 timeshift1 extractcentroid1 vellumconstraints1 vellumsolver1 Points_To_Pin matchsize2 matchsize3 vellumconstraints2 object_merge2 OUT_VEINS remesh2 Starting_Points matchsize4 matchsize5 End_Points findshortestpath1 object_merge3 smooth1 timeshift2 sweep1 pointdeform2 object_merge4 timeshift3 line2 OUT_ORGANS bend1 matchsize6 transform3 copy2 sweep2 object_merge5 timeshift4 extractcentroid2 pointdeform3 transform4 line3 OUT_TENTACLES object_merge6 matchsize7 Tentacle_Points copytopoints1 matchsize8 groupexpression1 OUT_BELL_PREEXTRUDE vellumconstraints3 vellumsolver2 vellumconstraints4 timeshift5 pointdeform4 sweep3 polyextrude2 
opcf ..
opcf ..

# Node out (/out)

# Node ch (/ch)

# Node shop (/shop)

# Node img (/img)
opcf stage

# Node sopimport1 (Lop/sopimport)
opadd -e -n sopimport sopimport1
oplocate -x 0.473713 -y 1.60321 sopimport1
opspareds "" sopimport1
opparm -V 21.0.440 sopimport1 soppath ( /obj/Jellyfish ) asreference ( off ) copycontents ( off ) adjustxformsforinput ( on ) bindmaterials ( nobind ) reftype ( payloadweak ) refprim ( automaticPrim ) refprimpath ( "" ) primpath ( '/$OS' ) instanceable ( off ) parentprimkind ( group ) parentprimtype ( UsdGeomXform ) separator_config ( ) enable_group ( off ) group ( "" ) enable_grouptype ( off ) grouptype ( primitive ) enable_pathprefix ( on ) pathprefix ( '/$OS' ) enable_savepath ( off ) savepath ( "" ) separator_extraconfig ( ) primitivedefinitiongroup ( 0 ) enable_packedusdhandling ( off ) packedusdhandling ( xformandattribs ) enable_otherprimhandling ( off ) otherprimhandling ( define ) enable_defineonlyleafprims ( off ) defineonlyleafprims ( off ) enable_packedhandling ( off ) packedhandling ( nativeinstances ) enable_agenthandling ( off ) agenthandling ( instancedskelroots ) enable_nurbscurvehandling ( off ) nurbscurvehandling ( basiscurves ) enable_nurbssurfhandling ( off ) nurbssurfhandling ( meshes ) enable_kindschema ( off ) kindschema ( component ) enable_pathattr ( off ) pathattr ( path,name ) enable_prefixabsolutepaths ( off ) prefixabsolutepaths ( off ) enable_heightfieldconvert ( off ) heightfieldconvert ( off ) geometryhandlinggroup ( 0 ) enable_polygonsassubd ( off ) polygonsassubd ( off ) enable_subdgroup ( off ) subdgroup ( "" ) enable_reversepolygons ( off ) reversepolygons ( off ) enable_setmissingwidths ( on ) setmissingwidths ( 0.01 ) importdatagroup ( 0 ) authortimesamples ( auto ) enable_setdefaultprim ( off ) setdefaultprim ( on ) enable_topologyhandling ( off ) topologyhandling ( animated ) enable_attribs ( off ) attribs ( '* ^__* ^usd*' ) enable_indexattribs ( off ) indexattribs ( type:string ) enable_constantattribs ( off ) constantattribs ( "" ) enable_scalarconstantattribs ( off ) scalarconstantattribs ( "" ) enable_boolattribs ( off ) boolattribs ( "" ) enable_uintattribs ( off ) uintattribs ( "" ) enable_uint64attribs ( off ) uint64attribs ( "" ) enable_staticattribs ( off ) staticattribs ( "" ) enable_partitionattribs ( off ) partitionattribs ( "" ) enable_prefixpartitionsubsets ( off ) prefixpartitionsubsets ( on ) enable_subsetgroups ( off ) subsetgroups ( "" ) enable_customattribs ( off ) customattribs ( "" ) enable_translateuvtost ( off ) translateuvtost ( on )
chlock sopimport1 -*
chautoscope sopimport1 -*
opset -d off -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -D off sopimport1
opexprlanguage -s hscript sopimport1
opuserdata -n '___Version___' -v '21.0.440' sopimport1
opcf materiallibrary1
opcf jellyfish
oporder -e inputs mtlxstandard_surface mtlxdisplacement Material_Outputs_and_AOVs material_properties 
opcf ..
opcf ..

# Node camera1 (Lop/camera)
opadd -e -n camera camera1
oplocate -x 0.479431 -y -0.66762100000000002 camera1
opspareds '    groupcollapsible {         name    "sample_group3"         label   "Frame Range/Subframes"         grouptag { "group_type" "collapsible" }         parmtag { "sidefx::header_parm" "sample_behavior" }          parm {             name    "sample_behavior"             baseparm             label   "Sampling Behavior"             export  none         }         parm {             name    "sample_f"             baseparm             label   "Start/End/Inc"             export  none         }         parm {             name    "sample_subframeenable"             baseparm             label   "Subframe Sampling"             export  none         }         groupsimple {             name    "sample_subframegroup3"             label   "Subframe Sampling"             disablewhen "{ sample_subframeenable == 0 }"             grouptag { "group_type" "simple" }             parmtag { "sidefx::header_toggle" "sample_subframeenable" }              parm {                 name    "sample_shuttermode"                 baseparm                 label   "Shutter"                 export  none             }             parm {                 name    "sample_shutterrange"                 baseparm                 label   "Shutter Open/Close"                 export  none             }             parm {                 name    "sample_cameraprim"                 baseparm                 label   "Camera Prim"                 export  none             }             parm {                 name    "sample_count"                 baseparm                 label   "Samples"                 export  none             }             parm {                 name    "sample_includeframe"                 baseparm                 label   "Always Include Frame Sample"                 export  none             }         }      }      parm {         name    "primpattern"         baseparm         label   "Primitives"         export  none     }     parm {         name    "primpath"         baseparm         label   "Primitive Path"         export  none     }     parm {         name    "createprims"         baseparm         label   "Action"         export  none     }     parm {         name    "initforedit"         baseparm         label   "Initialize Parameters"         export  none     }     parm {         name    "primcount"         baseparm         label   "Primitive Count"         invisible         export  none     }     parm {         name    "primtype"         baseparm         label   "Primitive Type"         invisible         export  none     }     parm {         name    "primkind"         baseparm         label   "Primitive Kind"         invisible         export  none     }     parm {         name    "specifier"         baseparm         label   "Primitive Specifier"         invisible         export  none     }     parm {         name    "classancestor"         baseparm         label   "Class Ancestor"         invisible         export  none     }     parm {         name    "parentprimtype"         baseparm         label   "Parent Primitive Type"         invisible         export  none     }     group {         name    "folder2"         label   "Transform"          parm {             name    "xn__xformOptransform_control_6fb"             baseparm             label   "xformOp:transform"             export  none         }         parm {             name    "xn__xformOptransform_51a"             baseparm             label   "xformOp:transform"             export  none         }         parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  none         }         parm {             name    "r"             baseparm             label   "Rotate"             export  none         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "shear"             baseparm             label   "Shear"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         groupcollapsible {             name    "parmgroup_pivotxform2"             label   "Pivot Transform"             disablewhen "{ xn__xformOptransform_control_6fb == block } { xn__xformOptransform_control_6fb == none }"             grouptag { "group_type" "collapsible" }              parm {                 name    "p"                 baseparm                 label   "Pivot Translate"                 export  none             }             parm {                 name    "pr"                 baseparm                 label   "Pivot Rotate"                 export  none             }         }          groupcollapsible {             name    "folder3"             label   "Constraints"             disablewhen "{ xn__xformOptransform_control_6fb == block } { xn__xformOptransform_control_6fb == none }"             grouptag { "group_type" "collapsible" }              parm {                 name    "lookatenable"                 baseparm                 label   "Enable Look At"                 export  none             }             parm {                 name    "keepposition"                 baseparm                 label   "Keep Position"                 invisible                 export  none             }             parm {                 name    "lookatposition"                 baseparm                 label   "Look At Position"                 export  none             }             parm {                 name    "lookatprim"                 baseparm                 label   "Look At Primitive"                 export  none             }             parm {                 name    "lookatprimpos"                 baseparm                 label   "Look At Primitive Position"                 invisible                 export  none             }             parm {                 name    "lookatprimrot"                 baseparm                 label   "Look At Primitive Rotation"                 invisible                 export  none             }             parm {                 name    "upvecmethod"                 baseparm                 label   "Up Vector Method"                 export  none             }             parm {                 name    "upvec"                 baseparm                 label   "Up Vector"                 export  none             }             parm {                 name    "twist"                 baseparm                 label   "Twist"                 export  none             }         }      }      group {         name    "folder2_1"         label   "View"          parm {             name    "projection_control"             baseparm             label   "Projection"             export  none         }         parm {             name    "projection"             baseparm             label   "Projection"             export  none         }         parm {             name    "clippingRange_control"             baseparm             label   "Clipping Range"             export  none         }         parm {             name    "clippingRange"             baseparm             label   "Clipping Range"             export  none         }         parm {             name    "focalLength_control"             baseparm             label   "Focal Length"             export  none         }         parm {             name    "focalLength"             baseparm             label   "Focal Length"             export  none         }         parm {             name    "focalLengthConverted"             baseparm             label   "Focal Length (converted)"             invisible             export  none         }         groupsimple {             name    "aperture_folder2"             label   "Aperture"             grouptag { "group_type" "simple" }              parm {                 name    "aperture"                 baseparm                 label   "Control Aperture"                 export  none             }             parm {                 name    "horizontalAperture_control"                 baseparm                 label   "Horizontal Aperture"                 nolabel                 invisible                 export  none             }             parm {                 name    "horizontalAperture"                 baseparm                 label   "Horizontal Aperture"                 export  none             }             parm {                 name    "horizontalApertureConverted"                 baseparm                 label   "Horizontal Aperture (converted)"                 invisible                 export  none             }             parm {                 name    "verticalAperture_control"                 baseparm                 label   "Vertical Aperture"                 nolabel                 invisible                 export  none             }             parm {                 name    "verticalAperture"                 baseparm                 label   "Vertical Aperture"                 export  none             }             parm {                 name    "verticalApertureSwitch"                 baseparm                 label   "Vertical Aperture (switch)"                 invisible                 export  none             }             parm {                 name    "verticalApertureConverted"                 baseparm                 label   "Vertical Aperture (converted)"                 invisible                 export  none             }             parm {                 name    "aspectratio"                 baseparm                 label   "Aspect Ratio"                 joinnext                 export  none             }             parm {                 name    "resMenu"                 baseparm                 label   "Choose Aspect Ratio"                 export  none             }             groupcollapsible {                 name    "aperture_offset_folder2"                 label   "Offsets"                 grouptag { "group_type" "collapsible" }                  parm {                     name    "horizontalApertureOffset_control"                     baseparm                     label   "Horizontal Aperture Offset"                     export  none                 }                 parm {                     name    "horizontalApertureOffset"                     baseparm                     label   "Horizontal Aperture Offset"                     export  none                 }                 parm {                     name    "horizontalApertureOffsetConverted"                     baseparm                     label   "Horizontal Aperture Offset (converted)"                     invisible                     export  none                 }                 parm {                     name    "verticalApertureOffset_control"                     baseparm                     label   "Vertical Aperture Offset"                     export  none                 }                 parm {                     name    "verticalApertureOffset"                     baseparm                     label   "Vertical Aperture Offset"                     export  none                 }                 parm {                     name    "verticalApertureOffsetConverted"                     baseparm                     label   "Vertical Aperture Offset (converted)"                     invisible                     export  none                 }             }          }          groupsimple {             name    "viewport_folder2"             label   "Viewport Control"             grouptag { "group_type" "simple" }              parm {                 name    "xn__houdiniguidescale_control_thb"                 baseparm                 label   "houdini:guidescale"                 export  none             }             parm {                 name    "xn__houdiniguidescale_s3a"                 baseparm                 label   "Scale Guide Geometry"                 export  none             }             parm {                 name    "xn__houdiniinviewermenu_control_2kb"                 baseparm                 label   "Show in Viewport Camera Menu"                 export  none             }             parm {                 name    "xn__houdiniinviewermenu_16a"                 baseparm                 label   "Show in Viewport Camera Menu"                 export  none             }             parm {                 name    "xn__houdinibackgroundimage_control_ypb"                 baseparm                 label   "Background Image"                 export  none             }             parm {                 name    "xn__houdinibackgroundimage_xcb"                 baseparm                 label   "Background Image"                 export  none             }             parm {                 name    "xn__houdiniforegroundimage_control_ypb"                 baseparm                 label   "Foreground Image"                 export  none             }             parm {                 name    "xn__houdiniforegroundimage_xcb"                 baseparm                 label   "Foreground Image"                 export  none             }         }      }      group {         name    "folder2_2"         label   "Sampling"          parm {             name    "xn__shutteropen_control_16a"             baseparm             label   "Shutter Open"             export  none         }         parm {             name    "xn__shutteropen_0ta"             baseparm             label   "Shutter Open"             export  none         }         parm {             name    "xn__shutterclose_control_o8a"             baseparm             label   "Shutter Close"             export  none         }         parm {             name    "xn__shutterclose_nva"             baseparm             label   "Shutter Close"             export  none         }         parm {             name    "focusDistance_control"             baseparm             label   "Focus Distance"             export  none         }         parm {             name    "focusDistance"             baseparm             label   "Focus Distance"             export  none         }         parm {             name    "fStop_control"             baseparm             label   "F-Stop"             export  none         }         parm {             name    "fStop"             baseparm             label   "F-Stop"             export  none         }         parm {             name    "exposure_control"             baseparm             label   "Exposure"             export  none         }         parm {             name    "exposure"             baseparm             label   "Exposure"             export  none         }     }      group {         name    "folder2_3"         label   "Karma"          parm {             name    "xn__karmacameralensshader_control_9nbg"             label   "camera:lensshader"             type    string             invisible             default { "`ifs(ch(\'xn__karmacamerause_lensshader_rhbg\'),\'set\',\'none\')`" }             menujoin {                 [ "import loputils" ]                 [ "return loputils.createEditPropertiesControlMenu(kwargs, \'string\')" ]                 language python             }             parmtag { "sidefx::look" "icon" }         }         parm {             name    "xn__karmacameralensshader_89ag"             label   "camera:lensshader"             type    string             invisible             default { [ "hou.node(ch(\'xn__karmacameralensshadervop_4fbg\')).shaderString() if hou.node(ch(\'xn__karmacameralensshadervop_4fbg\')) != None else \'\'" python ] }             disablewhen "{ xn__karmacameralensshader_control_9nbg == block } { xn__karmacameralensshader_control_9nbg == none }"             parmtag { "spare_category" "Rendering" }             parmtag { "uiscope" "None" }             parmtag { "usdapischema" "KarmaCameraAPI" }             parmtag { "usdvaluetype" "string" }         }         groupcollapsible {             name    "View"             label   "View"             parmtag { "group_default" "1" }             grouptag { "group_type" "collapsible" }              parm {                 name    "xn__karmacamerause_lensshader_control_subg"                 label   "Use Lens Shader"                 type    string                 default { "none" }                 menujoin {                     [ "import loputils" ]                     [ "return loputils.createEditPropertiesControlMenu(kwargs, \'bool\')" ]                     language python                 }                 parmtag { "sidefx::look" "icon" }             }             parm {                 name    "xn__karmacamerause_lensshader_rhbg"                 label   "Use Lens Shader"                 type    toggle                 default { "0" }                 disablewhen "{ xn__karmacamerause_lensshader_control_subg == block } { xn__karmacamerause_lensshader_control_subg == none }"                 parmtag { "spare_category" "View" }                 parmtag { "uiscope" "None" }                 parmtag { "usdapischema" "KarmaCameraAPI" }                 parmtag { "usdvaluetype" "bool" }             }             parm {                 name    "xn__karmacameramaterialbinding_control_fwbgi"                 label   "Lens Material"                 type    string                 default { "none" }                 menujoin {                     [ "import loputils" ]                     [ "return loputils.createEditPropertiesControlMenu(kwargs, \'relationship\')" ]                     language python                 }                 parmtag { "sidefx::look" "icon" }             }             parm {                 name    "xn__karmacameramaterialbinding_ejbgi"                 label   "Lens Material"                 type    string                 default { "" }                 disablewhen "{ xn__karmacameramaterialbinding_control_fwbgi == block } { xn__karmacameramaterialbinding_control_fwbgi == none }"                 parmtag { "script_action" "\\nimport loptoolutils\\nloptoolutils.setupKarmaCameraLensMaterial(kwargs)\\n" }                 parmtag { "script_action_help" "Create a lens shader LOP." }                 parmtag { "script_action_icon" "VOP_kma_physicallens" }                 parmtag { "script_action_language" "python" }                 parmtag { "sidefx::usdpathtype" "prim" }                 parmtag { "spare_category" "View" }                 parmtag { "uiscope" "None" }                 parmtag { "usdapischema" "MaterialBindingAPI" }                 parmtag { "usdvaluename" "material:binding" }                 parmtag { "usdvaluetype" "relationship" }             }             parm {                 name    "xn__karmacameralensshadervop_control_5sbg"                 label   "Lens Shader VOP"                 type    string                 default { "none" }                 menujoin {                     [ "import loputils" ]                     [ "return loputils.createEditPropertiesControlMenu(kwargs, \'string\')" ]                     language python                 }                 parmtag { "sidefx::look" "icon" }             }             parm {                 name    "xn__karmacameralensshadervop_4fbg"                 label   "Lens Shader VOP"                 type    oppath                 default { "" }                 disablewhen "{ xn__karmacameralensshadervop_control_5sbg == block } { xn__karmacameralensshadervop_control_5sbg == none }"                 parmtag { "opfilter" "!!CUSTOM/MATERIAL!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "View" }                 parmtag { "uiscope" "None" }                 parmtag { "usdapischema" "KarmaCameraAPI" }                 parmtag { "usdvaluetype" "string" }             }         }          groupcollapsible {             name    "Karma2"             label   "Karma"             parmtag { "group_default" "1" }             grouptag { "group_type" "collapsible" }              parm {                 name    "xn__karmacamerawindow_control_rhbg"                 label   "Screen Window"                 type    string                 default { "none" }                 menujoin {                     [ "import loputils" ]                     [ "return loputils.createEditPropertiesControlMenu(kwargs, \'float4\')" ]                     language python                 }                 parmtag { "sidefx::look" "icon" }             }             parm {                 name    "xn__karmacamerawindow_q3ag"                 label   "Screen Window"                 type    float                 size    4                 default { "-1" "1" "-1" "1" }                 disablewhen "{ xn__karmacamerawindow_control_rhbg == block } { xn__karmacamerawindow_control_rhbg == none }"                 range   { 0 10 }                 parmtag { "spare_category" "Karma" }                 parmtag { "uiscope" "None" }                 parmtag { "usdapischema" "KarmaCameraAPI" }                 parmtag { "usdvaluetype" "float4" }             }             parm {                 name    "xn__karmacameratint_control_iebg"                 label   "Tint"                 type    string                 default { "none" }                 menujoin {                     [ "import loputils" ]                     [ "return loputils.createEditPropertiesControlMenu(kwargs, \'float3\')" ]                     language python                 }                 parmtag { "sidefx::look" "icon" }             }             parm {                 name    "xn__karmacameratint_h0ag"                 label   "Tint"                 type    color                 size    3                 default { "1" "1" "1" }                 disablewhen "{ xn__karmacameratint_control_iebg == block } { xn__karmacameratint_control_iebg == none }"                 range   { 0 10 }                 parmtag { "spare_category" "Karma" }                 parmtag { "uiscope" "None" }                 parmtag { "usdapischema" "KarmaCameraAPI" }                 parmtag { "usdvaluetype" "float3" }             }         }      }  ' camera1
chblockbegin
chadd -t 0 0 camera1 sample_f1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @fstart camera1/sample_f1
chadd -t 0 0 camera1 sample_f2
chkey -t 0 -v 240 -m 0 -a 0 -A 0 -T a  -F @fend camera1/sample_f2
chadd -t 0 0 camera1 sample_f3
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @finc camera1/sample_f3
chadd -t 0 0 camera1 lookatprimposx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import loputils\nfrom pxr import Usd, UsdGeom\n\nlop_node = hou.node(\'.\')\npath = lop_node.evalParm(\'lookatprim\')\nif not path:\n    return 0\n\nstage = lop_node.stage()\nlook_at_prim = stage.GetPrimAtPath(path)\n\nif look_at_prim is None or not look_at_prim.IsA(UsdGeom.Imageable):\n    return 0\n\nxform = loputils.getPrimXform(lop_node, path)\n\nreturn xform.extractTranslates()[0]' -l p camera1/lookatprimposx
chadd -t 0 0 camera1 lookatprimposy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import loputils\nfrom pxr import Usd, UsdGeom\n\nlop_node = hou.node(\'.\')\npath = lop_node.evalParm(\'lookatprim\')\nif not path:\n    return 0\n\nstage = lop_node.stage()\nlook_at_prim = stage.GetPrimAtPath(path)\n\nif look_at_prim is None or not look_at_prim.IsA(UsdGeom.Imageable):\n    return 0\n\nxform = loputils.getPrimXform(lop_node, path)\n\nreturn xform.extractTranslates()[1]' -l p camera1/lookatprimposy
chadd -t 0 0 camera1 lookatprimposz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import loputils\nfrom pxr import Usd, UsdGeom\n\nlop_node = hou.node(\'.\')\npath = lop_node.evalParm(\'lookatprim\')\nif not path:\n    return 0\n\nstage = lop_node.stage()\nlook_at_prim = stage.GetPrimAtPath(path)\n\nif look_at_prim is None or not look_at_prim.IsA(UsdGeom.Imageable):\n    return 0\n\nxform = loputils.getPrimXform(lop_node, path)\n\nreturn xform.extractTranslates()[2]' -l p camera1/lookatprimposz
chadd -t 0 0 camera1 lookatprimrotx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import loputils\nfrom pxr import Usd, UsdGeom\n\nlop_node = hou.node(\'.\')\npath = lop_node.evalParm(\'lookatprim\')\nif not path:\n    return 0\n\nstage = lop_node.stage()\nlook_at_prim = stage.GetPrimAtPath(path)\n\nif look_at_prim is None or not look_at_prim.IsA(UsdGeom.Imageable):\n    return 0\n\nxform = loputils.getPrimXform(lop_node, path)\n\nreturn xform.extractRotates()[0]' -l p camera1/lookatprimrotx
chadd -t 0 0 camera1 lookatprimroty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import loputils\nfrom pxr import Usd, UsdGeom\n\nlop_node = hou.node(\'.\')\npath = lop_node.evalParm(\'lookatprim\')\nif not path:\n    return 0\n\nstage = lop_node.stage()\nlook_at_prim = stage.GetPrimAtPath(path)\n\nif look_at_prim is None or not look_at_prim.IsA(UsdGeom.Imageable):\n    return 0\n\nxform = loputils.getPrimXform(lop_node, path)\n\nreturn xform.extractRotates()[1]' -l p camera1/lookatprimroty
chadd -t 0 0 camera1 lookatprimrotz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import loputils\nfrom pxr import Usd, UsdGeom\n\nlop_node = hou.node(\'.\')\npath = lop_node.evalParm(\'lookatprim\')\nif not path:\n    return 0\n\nstage = lop_node.stage()\nlook_at_prim = stage.GetPrimAtPath(path)\n\nif look_at_prim is None or not look_at_prim.IsA(UsdGeom.Imageable):\n    return 0\n\nxform = loputils.getPrimXform(lop_node, path)\n\nreturn xform.extractRotates()[2]' -l p camera1/lookatprimrotz
chadd -t 0 0 camera1 focalLengthConverted
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '__import__(\'loputils\').getConvertedCameraParmValue(pwd(), \'focalLength\')' -l p camera1/focalLengthConverted
chadd -t 0 0 camera1 horizontalAperture_control
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ifs(!strcmp(chs("aperture"), "setratio"), "set", chs("aperture"))' camera1/horizontalAperture_control
chadd -t 0 0 camera1 horizontalApertureConverted
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '__import__(\'loputils\').getConvertedCameraParmValue(pwd(), \'horizontalAperture\')' -l p camera1/horizontalApertureConverted
chadd -t 0 0 camera1 verticalAperture_control
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ifs(!strcmp(chs("aperture"), "setratio"), "set", chs("aperture"))' camera1/verticalAperture_control
chadd -t 0 0 camera1 verticalApertureSwitch
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'if(!strcmp(chs("aperture"), "setratio"), ch("horizontalAperture") * ch("aspectratioy") / ch("aspectratiox"), ch("verticalAperture"))' camera1/verticalApertureSwitch
chadd -t 0 0 camera1 verticalApertureConverted
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '__import__(\'loputils\').getConvertedCameraParmValue(pwd(), \'verticalApertureSwitch\')' -l p camera1/verticalApertureConverted
chadd -t 0 0 camera1 horizontalApertureOffsetConverted
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '__import__(\'loputils\').getConvertedCameraParmValue(pwd(), \'horizontalApertureOffset\')' -l p camera1/horizontalApertureOffsetConverted
chadd -t 0 0 camera1 verticalApertureOffsetConverted
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '__import__(\'loputils\').getConvertedCameraParmValue(pwd(), \'verticalApertureOffset\')' -l p camera1/verticalApertureOffsetConverted
chadd -t 0 0 camera1 xn__houdiniguidescale_s3a
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1 / __import__(\'loputils\').getMetersPerUnit(pwd())' -l p camera1/xn__houdiniguidescale_s3a
chadd -t 0 0 camera1 xn__karmacameralensshader_89ag
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'hou.node(ch(\'xn__karmacameralensshadervop_4fbg\')).shaderString() if hou.node(ch(\'xn__karmacameralensshadervop_4fbg\')) != None else \'\'' -l p camera1/xn__karmacameralensshader_89ag
chblockend
opparm -V 2.1 camera1 sample_group ( 0 ) sample_behavior ( single ) sample_f ( sample_f1 sample_f2 sample_f3 ) sample_subframeenable ( off ) sample_subframegroup ( 0 ) sample_shuttermode ( manual ) sample_shutterrange ( -0.25 0.25 ) sample_cameraprim ( /cameras/camera1 ) sample_count ( 2 ) sample_includeframe ( on ) sample_group2 ( 0 ) sample_subframegroup2 ( 0 ) primpattern ( '`lopinputprims(\'.\', 0)`' ) primpath ( '/cameras/$OS' ) createprims ( on ) initforedit ( setdonothing ) primcount ( 1 ) primtype ( UsdGeomCamera ) primkind ( "" ) specifier ( def ) classancestor ( "" ) parentprimtype ( UsdGeomXform ) folder1 ( 0 0 0 ) xn__xformOptransform_control_6fb ( set ) xn__xformOptransform_51a ( append ) xOrd ( srt ) rOrd ( xyz ) t ( -6.308188706584259 1.0725187212265905 5.797841894552168 ) r ( -15.552241484057195 -46.0129327428278 10.53359838526008 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) folder0 ( 0 ) lookatenable ( off ) keepposition ( off ) lookatposition ( 0 0 0 ) lookatprim ( "" ) lookatprimpos ( lookatprimposx lookatprimposy lookatprimposz ) lookatprimrot ( lookatprimrotx lookatprimroty lookatprimrotz ) upvecmethod ( yaxis ) upvec ( 0 1 0 ) twist ( 0 ) projection_control ( set ) projection ( perspective ) clippingRange_control ( set ) clippingRange ( 1 1e6 ) focalLength_control ( set ) focalLength ( 50 ) focalLengthConverted ( focalLengthConverted ) aperture_folder ( 0 ) aperture ( setratio ) horizontalAperture_control ( horizontalAperture_control ) horizontalAperture ( 20.955 ) horizontalApertureConverted ( horizontalApertureConverted ) verticalAperture_control ( verticalAperture_control ) verticalAperture ( 15.2908 ) verticalApertureSwitch ( verticalApertureSwitch ) verticalApertureConverted ( verticalApertureConverted ) aspectratio ( 16 9 ) resMenu ( '4 3' ) aperture_offset_folder ( 0 ) horizontalApertureOffset_control ( set ) horizontalApertureOffset ( 0 ) horizontalApertureOffsetConverted ( horizontalApertureOffsetConverted ) verticalApertureOffset_control ( set ) verticalApertureOffset ( 0 ) verticalApertureOffsetConverted ( verticalApertureOffsetConverted ) viewport_folder ( 0 ) xn__houdiniguidescale_control_thb ( set ) xn__houdiniguidescale_s3a ( xn__houdiniguidescale_s3a ) xn__houdiniinviewermenu_control_2kb ( set ) xn__houdiniinviewermenu_16a ( on ) xn__houdinibackgroundimage_control_ypb ( set ) xn__houdinibackgroundimage_xcb ( "" ) xn__houdiniforegroundimage_control_ypb ( set ) xn__houdiniforegroundimage_xcb ( "" ) xn__shutteropen_control_16a ( set ) xn__shutteropen_0ta ( -0.25 ) xn__shutterclose_control_o8a ( set ) xn__shutterclose_nva ( 0.25 ) focusDistance_control ( set ) focusDistance ( 0.35444245787813844 ) fStop_control ( set ) fStop ( 0 ) exposure_control ( set ) exposure ( 0 ) sample_group3 ( 0 ) sample_subframegroup3 ( 0 ) folder2 ( 0 0 0 0 ) parmgroup_pivotxform2 ( 0 ) folder3 ( 0 ) aperture_folder2 ( 0 ) aperture_offset_folder2 ( 0 ) viewport_folder2 ( 0 ) xn__karmacameralensshader_control_9nbg ( '`ifs(ch(\'xn__karmacamerause_lensshader_rhbg\'),\'set\',\'none\')`' ) xn__karmacameralensshader_89ag ( xn__karmacameralensshader_89ag ) View ( 1 ) xn__karmacamerause_lensshader_control_subg ( none ) xn__karmacamerause_lensshader_rhbg ( off ) xn__karmacameramaterialbinding_control_fwbgi ( none ) xn__karmacameramaterialbinding_ejbgi ( "" ) xn__karmacameralensshadervop_control_5sbg ( none ) xn__karmacameralensshadervop_4fbg ( "" ) Karma2 ( 1 ) xn__karmacamerawindow_control_rhbg ( none ) xn__karmacamerawindow_q3ag ( -1 1 -1 1 ) xn__karmacameratint_control_iebg ( none ) xn__karmacameratint_h0ag ( 1 1 1 )
chlock camera1 -*
chautoscope camera1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -D off camera1
opexprlanguage -s hscript camera1
opuserdata -n '___Version___' -v '2.1' camera1
opuserdata -n 'set_lookat' -v 'True' camera1

# Node karmarendersettings (Lop/karmarendersettings)
opadd -e -n karmarendersettings karmarendersettings
oplocate -x 0.48859399999999997 -y -2.9518200000000001 karmarendersettings
opspareds "" karmarendersettings
opparm karmarendersettings  extrarendervars ( 0 ) tonemapcurve ( 21 ) ocio ( 0 ) custom_metadata ( 0 )
chblockbegin
chadd -t 0 0 karmarendersettings sample_f1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @fstart karmarendersettings/sample_f1
chadd -t 0 0 karmarendersettings sample_f2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @fend karmarendersettings/sample_f2
chadd -t 0 0 karmarendersettings sample_f3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @finc karmarendersettings/sample_f3
chadd -t 0 0 karmarendersettings resolutiony
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'pythonexprf("__import__(\'loputils\').computeResolutionParameter(True, True)")' karmarendersettings/resolutiony
chadd -t 0 0 karmarendersettings curve_basis
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'Geometry Default' karmarendersettings/curve_basis
chadd -t 0 0 karmarendersettings tonemapcurve1value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve1pos"), 0)' karmarendersettings/tonemapcurve1value
chadd -t 0 0 karmarendersettings tonemapcurve2value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve2pos"), 0)' karmarendersettings/tonemapcurve2value
chadd -t 0 0 karmarendersettings tonemapcurve3value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve3pos"), 0)' karmarendersettings/tonemapcurve3value
chadd -t 0 0 karmarendersettings tonemapcurve4value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve4pos"), 0)' karmarendersettings/tonemapcurve4value
chadd -t 0 0 karmarendersettings tonemapcurve5value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve5pos"), 0)' karmarendersettings/tonemapcurve5value
chadd -t 0 0 karmarendersettings tonemapcurve6value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve6pos"), 0)' karmarendersettings/tonemapcurve6value
chadd -t 0 0 karmarendersettings tonemapcurve7value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve7pos"), 0)' karmarendersettings/tonemapcurve7value
chadd -t 0 0 karmarendersettings tonemapcurve8value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve8pos"), 0)' karmarendersettings/tonemapcurve8value
chadd -t 0 0 karmarendersettings tonemapcurve9value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve9pos"), 0)' karmarendersettings/tonemapcurve9value
chadd -t 0 0 karmarendersettings tonemapcurve10value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve10pos"), 0)' karmarendersettings/tonemapcurve10value
chadd -t 0 0 karmarendersettings tonemapcurve11value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve11pos"), 0)' karmarendersettings/tonemapcurve11value
chadd -t 0 0 karmarendersettings tonemapcurve12value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve12pos"), 0)' karmarendersettings/tonemapcurve12value
chadd -t 0 0 karmarendersettings tonemapcurve13value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve13pos"), 0)' karmarendersettings/tonemapcurve13value
chadd -t 0 0 karmarendersettings tonemapcurve14value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve14pos"), 0)' karmarendersettings/tonemapcurve14value
chadd -t 0 0 karmarendersettings tonemapcurve15value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve15pos"), 0)' karmarendersettings/tonemapcurve15value
chadd -t 0 0 karmarendersettings tonemapcurve16value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve16pos"), 0)' karmarendersettings/tonemapcurve16value
chadd -t 0 0 karmarendersettings tonemapcurve17value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve17pos"), 0)' karmarendersettings/tonemapcurve17value
chadd -t 0 0 karmarendersettings tonemapcurve18value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve18pos"), 0)' karmarendersettings/tonemapcurve18value
chadd -t 0 0 karmarendersettings tonemapcurve19value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve19pos"), 0)' karmarendersettings/tonemapcurve19value
chadd -t 0 0 karmarendersettings tonemapcurve20value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve20pos"), 0)' karmarendersettings/tonemapcurve20value
chadd -t 0 0 karmarendersettings tonemapcurve21value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve21pos"), 0)' karmarendersettings/tonemapcurve21value
chblockend
opparm karmarendersettings sample_f ( sample_f1 sample_f2 sample_f3 ) folder18 ( 0 ) labelparm29 ( 'The primitives MUST be located under the /Render/ primitive to match the USD spec.' ) primpath ( /Render/rendersettings ) renderproductsparentprimpath ( /Render/Products ) rendervarsparentprimpath ( /Render/Products/Vars ) picture ( '$HIP/render/$HIPNAME.$OS.0$F4.exr' ) camera ( /cameras/camera1 ) res_mode ( autoheight ) resolution ( 1280 resolutiony ) resolutionMenu ( '640 480 1' ) sepparm2 ( ) engine ( xpu ) force_headlight ( off ) samplesperpixel ( 9 ) pathtracedsamples ( 256 ) sepparm9 ( ) folder2_1_1 ( 1 1 1 1 1 ) head_ao_samples ( 1 ) head_ao_distance ( 1 ) head_addfog ( off ) head_depthcue_z ( 0 0 ) head_depthcue_color ( 0 0 0 ) head_depthcue_alpha ( 1 ) folder9 ( 3 3 3 3 3 ) __indirectsampling ( 1 ) varianceaa_minsamples ( 1 ) varianceaa_maxsamples ( 9 ) folder12 ( 0 ) diffusequality ( 1 ) reflectquality ( 1 ) refractquality ( 1 ) volumequality ( 1 ) sssquality ( 1 ) folder13 ( 1 ) light_sampling_mode ( 'Light Tree' ) light_sampling_quality ( 4 ) folder15 ( 1 ) screendoorlimit ( 4 ) volumesteprate ( 0.128 ) diffuselimit ( 4 ) reflectionlimit ( 4 ) refractionlimit ( 6 ) volumelimit ( 2 ) ssslimit ( 7 ) colorlimit ( 20 ) colorlimitindlinked ( on ) colorlimitindirect ( 20 ) russianroulette_cutoff ( 2 ) enabledof ( on ) enablemblur ( off ) folder16 ( 0 ) mblur ( 1 ) vblur ( 'No Velocity Blur' ) samplesfromstage ( on ) geosamples ( 2 ) xformsamples ( 2 ) blurstyle ( 'Rotation Blur' ) instance_vblur ( 'No Velocity Blur' ) instance_samples ( 2 ) volumevblurscale ( 1 ) enableimageblur ( on ) point_style ( Spheres ) curve_style ( 'Rounded Curves' ) curve_basis ( curve_basis ) cull_backface ( Off ) causticsenable ( off ) folder11 ( 0 ) causticsroughnessclamp ( 0.2 ) __shading ( 1 ) raybias ( 0.001 ) autoraybias ( on ) constrainmaxrough ( on ) __dicing ( 1 ) usedicingcamera ( off ) dicingcamera ( "" ) offscreenquality ( 0.1 ) dicingqualityscale ( 1 ) outline_enable ( off ) outline_apply ( on ) outline_linesaovs ( off ) outline_radius ( 1 ) outline_primary ( on ) outline_primary_samples ( 4 ) outline_secondary ( on ) outline_secondary_samples ( 4 ) outline_depththreshold ( 1 ) sepparm16 ( ) outline_intensity ( 1 ) outline_fitmin ( 0 ) outline_fitmax ( 1 ) outline_color ( 1 0 1 ) outline_advanced ( 0 ) outline_depthblend ( 0 ) outline_mode ( 0 ) outline_primary_stencils ( 1 ) outline_secondary_stencils ( 1 ) outline_debug ( off ) __imageoutput ( 2 2 2 2 2 2 ) existingvars ( /Render/Products/Vars/* ) importsecondaryinputvars ( off ) importsecondaryproducts ( off ) pixelfilter ( gauss ) pixelfiltersize ( 2 ) __lpe ( 1 ) lpeaovlimit ( 100 ) doomitlpes ( off ) omitlpes ( Untagged_Lights ) dooutputcs ( off ) outputcs ( "" ) channel_lower_rgb ( off ) folder0 ( 1 ) beauty ( on ) labelparm2 ( "" ) beautyperlpe ( off ) sepparm ( ) beautyunshadowed ( off ) labelparm3 ( "" ) beautyunshadowedperlpe ( off ) sepparm15 ( ) shadow ( off ) labelparm23 ( "" ) shadowperlpe ( off ) folder1 ( 0 ) combineddiffuse ( off ) labelparm ( "" ) combineddiffuseperlpe ( off ) sepparm32 ( ) directdiffuse ( off ) labelparm4 ( "" ) directdiffuseperlpe ( off ) sepparm4 ( ) indirectdiffuse ( off ) labelparm5 ( "" ) indirectdiffuseperlpe ( off ) sepparm3 ( ) combineddiffuseunshadowed ( off ) labelparm6 ( "" ) combineddiffuseunshadowedperlpe ( off ) sepparm5 ( ) directdiffuseunshadowed ( off ) labelparm7 ( "" ) directdiffuseunshadowedperlpe ( off ) sepparm34 ( ) indirectdiffuseunshadowed ( off ) labelparm8 ( "" ) indirectdiffuseunshadowedperlpe ( off ) sepparm39 ( ) combineddiffuseshadow ( off ) labelparm24 ( "" ) combineddiffuseshadowperlpe ( off ) sepparm40 ( ) directdiffuseshadow ( off ) labelparm25 ( "" ) directdiffuseshadowperlpe ( off ) sepparm41 ( ) indirectdiffuseshadow ( off ) labelparm26 ( "" ) indirectdiffuseshadowperlpe ( off ) folder2 ( 0 ) combinedglossyreflection ( off ) labelparm9 ( "" ) combinedglossyreflectionperlpe ( off ) sepparm35 ( ) directglossyreflection ( off ) labelparm10 ( "" ) directglossyreflectionperlpe ( off ) sepparm6 ( ) indirectglossyreflection ( off ) labelparm11 ( "" ) indirectglossyreflectionperlpe ( off ) sepparm7 ( ) glossytransmission ( off ) labelparm12 ( "" ) glossytransmissionperlpe ( off ) sepparm8 ( ) coat ( off ) labelparm13 ( "" ) coatperlpe ( off ) folder5 ( 0 ) combinedemission ( off ) sepparm10 ( ) directemission ( off ) sepparm36 ( ) indirectemission ( off ) sepparm14 ( ) visiblelights ( off ) labelparm17 ( "" ) visiblelightsperlpe ( off ) folder6 ( 0 ) combinedvolume ( off ) labelparm18 ( "" ) combinedvolumeperlpe ( off ) sepparm12 ( ) directvolume ( off ) labelparm19 ( "" ) directvolumeperlpe ( off ) sepparm37 ( ) indirectvolume ( off ) labelparm20 ( "" ) indirectvolumeperlpe ( off ) folder7 ( 0 ) sss ( off ) labelparm21 ( "" ) sssperlpe ( off ) folder10 ( 0 ) albedo ( off ) folder17 ( 0 ) ambientocclusion ( off ) __ray ( 0 ) hitP ( off ) labelparm30 ( "" ) hitPfilter ( '["ubox",{}]' ) hitPprecision ( float3 ) sepparm22 ( ) hitP_camera ( off ) labelparm32 ( "" ) hitP_camerafilter ( '["ubox",{}]' ) hitP_cameraprecision ( float3 ) sepparm23 ( ) hitPz ( off ) labelparm31 ( "" ) hitPzfilter ( '["minmax",{"mode":"zmin"}]' ) hitPzprecision ( float ) sepparm24 ( ) element ( off ) labelparm33 ( "" ) elementfilter ( '["minmax",{"mode":"idcover"}]' ) elementprecision ( float ) sepparm25 ( ) primid ( off ) labelparm34 ( "" ) primidfilter ( '["minmax",{"mode":"idcover"}]' ) primidprecision ( float ) sepparm26 ( ) hituv ( off ) labelparm35 ( "" ) hituvfilter ( '["ubox",{}]' ) hituvprecision ( float3 ) sepparm29 ( ) hitN ( off ) labelparm61 ( "" ) hitNfilter ( '["ubox",{}]' ) hitNprecision ( half3 ) sepparm46 ( ) hitNg ( off ) labelparm63 ( "" ) hitNgfilter ( '["ubox",{}]' ) hitNgprecision ( half3 ) sepparm30 ( ) hitN_facingratio ( off ) labelparm70 ( "" ) hitN_facingratiofilter ( '["ubox",{}]' ) hitN_facingratioprecision ( half ) sepparm38 ( ) hitNg_facingratio ( off ) labelparm69 ( "" ) hitNg_facingratiofilter ( '["ubox",{}]' ) hitNg_facingratioprecision ( half ) sepparm45 ( ) motionvectors ( off ) labelparm67 ( "" ) motionvectorsfilter ( '["ubox",{}]' ) motionvectorsprecision ( half3 ) sepparm33 ( ) velocity ( off ) labelparm66 ( "" ) velocityfilter ( '["ubox",{}]' ) velocityprecision ( half3 ) __extrarendervars ( 0 ) extrarendervars ( 0 ) holdout_shadows ( off ) holdout_shadow_alpha ( 1 ) folder3 ( 0 ) denoiser ( optix ) denoise_usealbedo ( on ) denoise_useN ( on ) denoise_aovs ( C ) denoise_cpu_only ( off ) sepparm11 ( ) tonemap ( aces ) tonemapcurve ( 21 ) tonemap_aovs ( C ) tonemap_toe ( 0.5 ) tonemap_shoulder ( 0.5 ) tonemap_utoe ( 0.55 ) tonemap_ushoulder ( 0.26 ) tonemap_slope ( 0.88 ) tonemap_linear ( 0.3 ) tonemap_linearangle ( 0.1 ) tonemap_toelength ( 0.5 ) tonemap_shoulderlength ( 0.5 ) tonemap_shoulderangle ( 1 ) sepparm13 ( ) ocio ( 0 ) aspectRatioConformPolicy ( expandAperture ) dataWindowNDC ( 0 0 1 1 ) pixelAspectRatio ( 1 ) image_artist ( "" ) image_comment ( "" ) image_hostname ( "" ) image_exr_compression ( zips ) image_dwa_compression ( 85 ) custom_metadata ( 0 ) __imageoutput_6 ( 0 ) dcm ( off ) folder8 ( 0 ) dcmfilename ( '$HIP/render/$HIPNAME.$OS.dcm.$F4.exr' ) dcmvars ( '`chs("rendervarsparentprimpath")`/*' ) dcmcompression ( 5 ) dcmofsize ( 3 ) dcmzbias ( 0.001 ) dcmusehitdist ( off ) rendering8 ( 0 ) setlayerrendersettings ( on ) rendering8_1 ( 0 0 0 0 0 ) convergence_mode ( Variance ) __variance ( 1 ) oracle ( variance ) oracle_minsamples ( -1 ) oracle_plane ( C ) oracle_variance ( 0.01 ) oracle_ociomode ( 0 ) oracle_ociodisplay ( 'sRGB - Display' ) oracle_ocioview ( "" ) oracle_ociocolorspace ( default ) folder14 ( 1 ) varianceaa_thresh ( 0.01 ) guiding_enable ( off ) guiding_samples ( 0 ) outputcheckpoint ( off ) productName ( '$HIP/render/$HIPNAME.$OS.$F4.checkpoint' ) savefrequency ( 60 ) resume ( on ) imagemode ( Progressive ) progressivepasses ( 0 ) bucketsize ( 32 ) bucketorder ( Middle ) usecacheratio ( 1 ) cacheratio ( 0.25 ) cachesize ( 1000 ) abortmissingtexture ( off ) abortnogpudevice ( off ) exportcomponents ( 'diffuse reflect coat refract volume sss' ) diffusecomponents ( diffuse ) refractcomponents ( refract ) volumecomponents ( volume ) ssscomponents ( sss ) tonemapcurve1pos ( 0 ) tonemapcurve1value ( tonemapcurve1value ) tonemapcurve1interp ( linear ) tonemapcurve2pos ( 0.05 ) tonemapcurve2value ( tonemapcurve2value ) tonemapcurve2interp ( linear ) tonemapcurve3pos ( 0.1 ) tonemapcurve3value ( tonemapcurve3value ) tonemapcurve3interp ( linear ) tonemapcurve4pos ( 0.15000000000000002 ) tonemapcurve4value ( tonemapcurve4value ) tonemapcurve4interp ( linear ) tonemapcurve5pos ( 0.2 ) tonemapcurve5value ( tonemapcurve5value ) tonemapcurve5interp ( linear ) tonemapcurve6pos ( 0.25 ) tonemapcurve6value ( tonemapcurve6value ) tonemapcurve6interp ( linear ) tonemapcurve7pos ( 0.30000000000000004 ) tonemapcurve7value ( tonemapcurve7value ) tonemapcurve7interp ( linear ) tonemapcurve8pos ( 0.35000000000000003 ) tonemapcurve8value ( tonemapcurve8value ) tonemapcurve8interp ( linear ) tonemapcurve9pos ( 0.4 ) tonemapcurve9value ( tonemapcurve9value ) tonemapcurve9interp ( linear ) tonemapcurve10pos ( 0.45 ) tonemapcurve10value ( tonemapcurve10value ) tonemapcurve10interp ( linear ) tonemapcurve11pos ( 0.5 ) tonemapcurve11value ( tonemapcurve11value ) tonemapcurve11interp ( linear ) tonemapcurve12pos ( 0.55 ) tonemapcurve12value ( tonemapcurve12value ) tonemapcurve12interp ( linear ) tonemapcurve13pos ( 0.6000000000000001 ) tonemapcurve13value ( tonemapcurve13value ) tonemapcurve13interp ( linear ) tonemapcurve14pos ( 0.65 ) tonemapcurve14value ( tonemapcurve14value ) tonemapcurve14interp ( linear ) tonemapcurve15pos ( 0.7000000000000001 ) tonemapcurve15value ( tonemapcurve15value ) tonemapcurve15interp ( linear ) tonemapcurve16pos ( 0.75 ) tonemapcurve16value ( tonemapcurve16value ) tonemapcurve16interp ( linear ) tonemapcurve17pos ( 0.8 ) tonemapcurve17value ( tonemapcurve17value ) tonemapcurve17interp ( linear ) tonemapcurve18pos ( 0.8500000000000001 ) tonemapcurve18value ( tonemapcurve18value ) tonemapcurve18interp ( linear ) tonemapcurve19pos ( 0.9 ) tonemapcurve19value ( tonemapcurve19value ) tonemapcurve19interp ( linear ) tonemapcurve20pos ( 0.9500000000000001 ) tonemapcurve20value ( tonemapcurve20value ) tonemapcurve20interp ( linear ) tonemapcurve21pos ( 1 ) tonemapcurve21value ( tonemapcurve21value ) tonemapcurve21interp ( linear )
chlock karmarendersettings -* +resolutiony +tonemapcurve +tonemapcurve1value +tonemapcurve1interp +tonemapcurve2value +tonemapcurve2interp +tonemapcurve3value +tonemapcurve3interp +tonemapcurve4value +tonemapcurve4interp +tonemapcurve5value +tonemapcurve5interp +tonemapcurve6value +tonemapcurve6interp +tonemapcurve7value +tonemapcurve7interp +tonemapcurve8value +tonemapcurve8interp +tonemapcurve9value +tonemapcurve9interp +tonemapcurve10value +tonemapcurve10interp +tonemapcurve11value +tonemapcurve11interp +tonemapcurve12value +tonemapcurve12interp +tonemapcurve13value +tonemapcurve13interp +tonemapcurve14value +tonemapcurve14interp +tonemapcurve15value +tonemapcurve15interp +tonemapcurve16value +tonemapcurve16interp +tonemapcurve17value +tonemapcurve17interp +tonemapcurve18value +tonemapcurve18interp +tonemapcurve19value +tonemapcurve19interp +tonemapcurve20value +tonemapcurve20interp +tonemapcurve21value +tonemapcurve21interp
chautoscope karmarendersettings -*
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -D off karmarendersettings
opexprlanguage -s hscript karmarendersettings
opuserdata -n '___Version___' -v '' karmarendersettings
opuserdata -n 'sidefx::parm_filter_text_pattern' -v 'tonem' karmarendersettings

# Node usdrender_rop1 (Lop/usdrender_rop)
opadd -e -n usdrender_rop usdrender_rop1
oplocate -x 0.48859399999999997 -y -3.6676199999999999 usdrender_rop1
opspareds "" usdrender_rop1
opparm usdrender_rop1  husk_slapcomp ( 0 ) resolvercontextstringcount ( 0 ) variantselectioncount ( 0 ) optioncount ( 1 )
chblockbegin
chadd -t 0 0 usdrender_rop1 f1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$FSTART' usdrender_rop1/f1
chadd -t 0 0 usdrender_rop1 f2
chkey -t 0 -v 240 -m 0 -a 0 -A 0 -T a  -F '$FEND' usdrender_rop1/f2
chadd -t 0 0 usdrender_rop1 outputimageshowwarning
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'pwd().evalParm("allframesatonce") != 0 and pwd().evalParm("outputimage") != \'\' and pwd().evalParm("outputimage") == hou.text.expandHuskFilePath(pwd().evalParm("outputimage")) and pwd().evalParm("outputimage") != \'ip\' and pwd().evalParm("outputimage") != \'md\'' -l p usdrender_rop1/outputimageshowwarning
chblockend
opparm -V 21.0.440 usdrender_rop1 execute ( 0 ) renderpreview ( 0 ) executebackground ( 0 ) renderdialog ( 0 ) trange ( off ) f ( f1 f2 1 ) foffset ( 0 0 1 ) allframesatonce ( off ) take ( _current_ ) renderer ( BRAY_HdKarmaXPU ) husk_gpu ( off ) loppath ( "" ) rendersettings ( '`loplastmodifiedprims("../karmarendersettings")`' ) renderpass ( "" ) override_camera ( "" ) outputimage ( "" ) outputimagewarning ( 'Warning: When Render All Frames with a Single Process is enabled,\nthe Override Output Image parameter must pass a time-varying value\nto husk. To do this, make sure the image path uses a backslash in\nfront of a time varying variable such as "\\\\\\$F".' ) outputimageshowwarning ( outputimageshowwarning ) override_res ( "" ) res_scale ( 100 ) res_scale_menu ( 10 ) res_user ( 1280 720 ) res_userMenu ( '640 480 1' ) _tabs ( 0 0 0 ) _husk_tabs ( 0 0 0 0 0 0 0 0 ) husk_instantshutter ( off ) husk_enable_headlight ( off ) husk_headlight ( distant ) husk_dopopulationmask ( off ) husk_populationmask ( "" ) husk_rendersettingsandcams ( on ) husk_purpose ( geometry,render ) husk_complexity ( veryhigh ) husk_legacyexr ( off ) husk_delegateprod ( on ) husk_restartdelegate ( off ) husk_restartdelegateframes ( 1 ) dosnapshot ( on ) snapshotinterval ( 300 ) husk_dotimelimit ( off ) husk_timelimit ( 300 ) husk_timelimitperimage ( on ) husk_metadata_key ( "" ) husk_metadata_value ( "" ) husk_mplayname ( '$HIPNAME' ) husk_mplay ( off ) husk_mplayaovs ( - ) husk_mplayzoom ( 100 ) husk_mplayzoommenu ( 10 ) husk_tex_res ( -1 ) husk_tex_memmode ( off ) husk_tex_mem ( 2048 ) husk_tex_mempct ( 50 ) husk_tex_filemode ( off ) husk_tex_files ( 512 ) husk_tex_filespct ( 50 ) husk_tex_filesreserve ( 128 ) husk_tprerender ( on ) husk_prerender ( "" ) husk_tpreframe ( on ) husk_preframe ( "" ) husk_tpresnapshot ( on ) husk_presnapshot ( "" ) husk_tpostsnapshot ( on ) husk_postsnapshot ( "" ) husk_tpostframe ( on ) husk_postframe ( "" ) husk_tpostrender ( on ) husk_postrender ( "" ) husk_tile ( off ) husk_autotile ( off ) husk_tilemaxres ( 65536 65536 ) husk_tiletempdir ( '$HOUDINI_TEMP_DIR' ) husk_tilecount ( 4 4 ) husk_tileindex ( 0 ) husk_tilesuffix ( _tile%02d ) husk_debug ( off ) verbose ( 0 ) verbose_menu ( "" ) vexprofile ( 0 ) windowsconsole ( "" ) husk_usdtrace ( "" ) husk_chromefile ( "" ) husk_log ( off ) husk_logappend ( off ) husk_stdout ( "" ) husk_stderr ( "" ) husk_slapcomp ( 0 ) runcommand ( on ) rendercommand ( husk ) dorenderexisting ( off ) renderexisting ( "" ) renderexistingandsaveusd ( off ) resolvercontext ( '`chs(strcat(opcreator("."), "/resolvercontextassetpath"))`' ) resolvercontextstringcount ( 0 ) variantselectioncount ( 0 ) soho_foreground ( off ) alfprogress ( off ) mkpath ( on ) domaxthreads ( off ) maxthreads ( -1 ) initsim ( off ) reportnetwork ( off ) usdexport_group ( 0 ) lopoutput ( __render__.usd ) deletefiles ( intempdir ) savestyle ( flattenimplicitlayers ) striplayerbreaks ( off ) strippostlayers ( off ) trackprimexistence ( off ) usenetworksafesave ( on ) filtertimesamples ( always ) filtertimesamplespadding ( 0 ) extrafiles_group ( 0 ) savepattern ( "" ) errorsavingimplicitpaths ( off ) savefilesfromdisk ( on ) flattenfilelayers ( off ) flattensoplayers ( off ) outputprocessor_group ( 0 ) outputprocessor_removehfs ( on ) outputprocessors ( localizeassets ) savetodirectory_group ( 0 ) enableoutputprocessor_savetodirectory ( on ) savetodirectory_directory ( '$HOUDINI_TEMP_DIR/usd_renders/$RENDERID' ) simplerelativepaths_group ( 0 ) enableoutputprocessor_simplerelativepaths ( on ) matchoutputextension_group ( 0 ) enableoutputprocessor_matchoutputextension ( on ) layermetadata_group ( 0 ) defaultprim ( "" ) requiredefaultprim ( off ) savetimeinfo ( on ) clearhoudinicustomdata ( off ) ensuremetricsset ( on ) contextoptions_group ( 0 ) setropcook ( on ) optioncount ( 1 ) tprerender ( on ) prerender ( "" ) lprerender ( hscript ) tpreframe ( on ) preframe ( "" ) lpreframe ( hscript ) tpostframe ( on ) postframe ( "" ) lpostframe ( hscript ) tpostrender ( on ) postrender ( "" ) lpostrender ( hscript ) optiongroup1 ( 0 ) optionenable1 ( on ) optionname1 ( "" ) optiontype1 ( string ) optionstrvalue1 ( "" ) optionfloatvalue1 ( 0 )
chlock usdrender_rop1 -*
chautoscope usdrender_rop1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off usdrender_rop1
opexprlanguage -s hscript usdrender_rop1
opuserdata -n '___Version___' -v '21.0.440' usdrender_rop1

# Node karmarendersettings1 (Lop/karmarendersettings)
opadd -e -n karmarendersettings karmarendersettings1
oplocate -x 1.7378100000000001 -y -3.6676199999999999 karmarendersettings1
opspareds "" karmarendersettings1
opparm karmarendersettings1  extrarendervars ( 0 ) tonemapcurve ( 21 ) ocio ( 0 ) custom_metadata ( 0 )
chblockbegin
chadd -t 0 0 karmarendersettings1 sample_f1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @fstart karmarendersettings1/sample_f1
chadd -t 0 0 karmarendersettings1 sample_f2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @fend karmarendersettings1/sample_f2
chadd -t 0 0 karmarendersettings1 sample_f3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @finc karmarendersettings1/sample_f3
chadd -t 0 0 karmarendersettings1 resolutiony
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'pythonexprf("__import__(\'loputils\').computeResolutionParameter(True, True)")' karmarendersettings1/resolutiony
chadd -t 0 0 karmarendersettings1 curve_basis
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'Geometry Default' karmarendersettings1/curve_basis
chadd -t 0 0 karmarendersettings1 tonemapcurve1value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve1pos"), 0)' karmarendersettings1/tonemapcurve1value
chadd -t 0 0 karmarendersettings1 tonemapcurve2value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve2pos"), 0)' karmarendersettings1/tonemapcurve2value
chadd -t 0 0 karmarendersettings1 tonemapcurve3value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve3pos"), 0)' karmarendersettings1/tonemapcurve3value
chadd -t 0 0 karmarendersettings1 tonemapcurve4value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve4pos"), 0)' karmarendersettings1/tonemapcurve4value
chadd -t 0 0 karmarendersettings1 tonemapcurve5value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve5pos"), 0)' karmarendersettings1/tonemapcurve5value
chadd -t 0 0 karmarendersettings1 tonemapcurve6value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve6pos"), 0)' karmarendersettings1/tonemapcurve6value
chadd -t 0 0 karmarendersettings1 tonemapcurve7value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve7pos"), 0)' karmarendersettings1/tonemapcurve7value
chadd -t 0 0 karmarendersettings1 tonemapcurve8value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve8pos"), 0)' karmarendersettings1/tonemapcurve8value
chadd -t 0 0 karmarendersettings1 tonemapcurve9value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve9pos"), 0)' karmarendersettings1/tonemapcurve9value
chadd -t 0 0 karmarendersettings1 tonemapcurve10value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve10pos"), 0)' karmarendersettings1/tonemapcurve10value
chadd -t 0 0 karmarendersettings1 tonemapcurve11value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve11pos"), 0)' karmarendersettings1/tonemapcurve11value
chadd -t 0 0 karmarendersettings1 tonemapcurve12value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve12pos"), 0)' karmarendersettings1/tonemapcurve12value
chadd -t 0 0 karmarendersettings1 tonemapcurve13value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve13pos"), 0)' karmarendersettings1/tonemapcurve13value
chadd -t 0 0 karmarendersettings1 tonemapcurve14value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve14pos"), 0)' karmarendersettings1/tonemapcurve14value
chadd -t 0 0 karmarendersettings1 tonemapcurve15value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve15pos"), 0)' karmarendersettings1/tonemapcurve15value
chadd -t 0 0 karmarendersettings1 tonemapcurve16value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve16pos"), 0)' karmarendersettings1/tonemapcurve16value
chadd -t 0 0 karmarendersettings1 tonemapcurve17value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve17pos"), 0)' karmarendersettings1/tonemapcurve17value
chadd -t 0 0 karmarendersettings1 tonemapcurve18value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve18pos"), 0)' karmarendersettings1/tonemapcurve18value
chadd -t 0 0 karmarendersettings1 tonemapcurve19value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve19pos"), 0)' karmarendersettings1/tonemapcurve19value
chadd -t 0 0 karmarendersettings1 tonemapcurve20value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve20pos"), 0)' karmarendersettings1/tonemapcurve20value
chadd -t 0 0 karmarendersettings1 tonemapcurve21value
chkey -t 0 -v 0 -V 0 -m 0 -M 0 -a 0 -A 0 -F 'primuv("sopnet/tonemap_curve", 0, "P", 1, ch("tonemapcurve21pos"), 0)' karmarendersettings1/tonemapcurve21value
chblockend
opparm karmarendersettings1 sample_f ( sample_f1 sample_f2 sample_f3 ) folder18 ( 0 ) labelparm29 ( 'The primitives MUST be located under the /Render/ primitive to match the USD spec.' ) primpath ( /Render/rendersettings ) renderproductsparentprimpath ( /Render/Products ) rendervarsparentprimpath ( /Render/Products/Vars ) picture ( '$HIP/render/$HIPNAME.$OS.0$F4.png' ) camera ( /cameras/camera1 ) res_mode ( autoheight ) resolution ( 1280 resolutiony ) resolutionMenu ( '640 480 1' ) sepparm2 ( ) engine ( xpu ) force_headlight ( off ) samplesperpixel ( 9 ) pathtracedsamples ( 1024 ) sepparm9 ( ) folder2_1_1 ( 3 3 3 3 3 ) head_ao_samples ( 1 ) head_ao_distance ( 1 ) head_addfog ( off ) head_depthcue_z ( 0 0 ) head_depthcue_color ( 0 0 0 ) head_depthcue_alpha ( 1 ) folder9 ( 0 0 0 0 0 ) __indirectsampling ( 1 ) varianceaa_minsamples ( 1 ) varianceaa_maxsamples ( 9 ) folder12 ( 0 ) diffusequality ( 1 ) reflectquality ( 1 ) refractquality ( 1 ) volumequality ( 1 ) sssquality ( 1 ) folder13 ( 1 ) light_sampling_mode ( 'Light Tree' ) light_sampling_quality ( 4 ) folder15 ( 1 ) screendoorlimit ( 4 ) volumesteprate ( 0.128 ) diffuselimit ( 1 ) reflectionlimit ( 4 ) refractionlimit ( 4 ) volumelimit ( 0 ) ssslimit ( 1 ) colorlimit ( 20 ) colorlimitindlinked ( on ) colorlimitindirect ( 20 ) russianroulette_cutoff ( 2 ) enabledof ( on ) enablemblur ( on ) folder16 ( 0 ) mblur ( 1 ) vblur ( 'No Velocity Blur' ) samplesfromstage ( on ) geosamples ( 2 ) xformsamples ( 2 ) blurstyle ( 'Rotation Blur' ) instance_vblur ( 'No Velocity Blur' ) instance_samples ( 2 ) volumevblurscale ( 1 ) enableimageblur ( on ) point_style ( Spheres ) curve_style ( 'Rounded Curves' ) curve_basis ( curve_basis ) cull_backface ( Off ) causticsenable ( off ) folder11 ( 0 ) causticsroughnessclamp ( 0.2 ) __shading ( 0 ) raybias ( 0.001 ) autoraybias ( on ) constrainmaxrough ( on ) __dicing ( 0 ) usedicingcamera ( off ) dicingcamera ( "" ) offscreenquality ( 0.1 ) dicingqualityscale ( 1 ) outline_enable ( off ) outline_apply ( on ) outline_linesaovs ( off ) outline_radius ( 1 ) outline_primary ( on ) outline_primary_samples ( 4 ) outline_secondary ( on ) outline_secondary_samples ( 4 ) outline_depththreshold ( 1 ) sepparm16 ( ) outline_intensity ( 1 ) outline_fitmin ( 0 ) outline_fitmax ( 1 ) outline_color ( 1 0 1 ) outline_advanced ( 0 ) outline_depthblend ( 0 ) outline_mode ( 0 ) outline_primary_stencils ( 1 ) outline_secondary_stencils ( 1 ) outline_debug ( off ) __imageoutput ( 0 0 0 0 0 0 ) existingvars ( /Render/Products/Vars/* ) importsecondaryinputvars ( off ) importsecondaryproducts ( off ) pixelfilter ( gauss ) pixelfiltersize ( 2 ) __lpe ( 1 ) lpeaovlimit ( 100 ) doomitlpes ( off ) omitlpes ( Untagged_Lights ) dooutputcs ( off ) outputcs ( "" ) channel_lower_rgb ( off ) folder0 ( 1 ) beauty ( on ) labelparm2 ( "" ) beautyperlpe ( off ) sepparm ( ) beautyunshadowed ( off ) labelparm3 ( "" ) beautyunshadowedperlpe ( off ) sepparm15 ( ) shadow ( off ) labelparm23 ( "" ) shadowperlpe ( off ) folder1 ( 0 ) combineddiffuse ( off ) labelparm ( "" ) combineddiffuseperlpe ( off ) sepparm32 ( ) directdiffuse ( off ) labelparm4 ( "" ) directdiffuseperlpe ( off ) sepparm4 ( ) indirectdiffuse ( off ) labelparm5 ( "" ) indirectdiffuseperlpe ( off ) sepparm3 ( ) combineddiffuseunshadowed ( off ) labelparm6 ( "" ) combineddiffuseunshadowedperlpe ( off ) sepparm5 ( ) directdiffuseunshadowed ( off ) labelparm7 ( "" ) directdiffuseunshadowedperlpe ( off ) sepparm34 ( ) indirectdiffuseunshadowed ( off ) labelparm8 ( "" ) indirectdiffuseunshadowedperlpe ( off ) sepparm39 ( ) combineddiffuseshadow ( off ) labelparm24 ( "" ) combineddiffuseshadowperlpe ( off ) sepparm40 ( ) directdiffuseshadow ( off ) labelparm25 ( "" ) directdiffuseshadowperlpe ( off ) sepparm41 ( ) indirectdiffuseshadow ( off ) labelparm26 ( "" ) indirectdiffuseshadowperlpe ( off ) folder2 ( 0 ) combinedglossyreflection ( off ) labelparm9 ( "" ) combinedglossyreflectionperlpe ( off ) sepparm35 ( ) directglossyreflection ( off ) labelparm10 ( "" ) directglossyreflectionperlpe ( off ) sepparm6 ( ) indirectglossyreflection ( off ) labelparm11 ( "" ) indirectglossyreflectionperlpe ( off ) sepparm7 ( ) glossytransmission ( off ) labelparm12 ( "" ) glossytransmissionperlpe ( off ) sepparm8 ( ) coat ( off ) labelparm13 ( "" ) coatperlpe ( off ) folder5 ( 0 ) combinedemission ( off ) sepparm10 ( ) directemission ( off ) sepparm36 ( ) indirectemission ( off ) sepparm14 ( ) visiblelights ( off ) labelparm17 ( "" ) visiblelightsperlpe ( off ) folder6 ( 0 ) combinedvolume ( off ) labelparm18 ( "" ) combinedvolumeperlpe ( off ) sepparm12 ( ) directvolume ( off ) labelparm19 ( "" ) directvolumeperlpe ( off ) sepparm37 ( ) indirectvolume ( off ) labelparm20 ( "" ) indirectvolumeperlpe ( off ) folder7 ( 0 ) sss ( off ) labelparm21 ( "" ) sssperlpe ( off ) folder10 ( 0 ) albedo ( off ) folder17 ( 0 ) ambientocclusion ( off ) __ray ( 0 ) hitP ( off ) labelparm30 ( "" ) hitPfilter ( '["ubox",{}]' ) hitPprecision ( float3 ) sepparm22 ( ) hitP_camera ( off ) labelparm32 ( "" ) hitP_camerafilter ( '["ubox",{}]' ) hitP_cameraprecision ( float3 ) sepparm23 ( ) hitPz ( off ) labelparm31 ( "" ) hitPzfilter ( '["minmax",{"mode":"zmin"}]' ) hitPzprecision ( float ) sepparm24 ( ) element ( off ) labelparm33 ( "" ) elementfilter ( '["minmax",{"mode":"idcover"}]' ) elementprecision ( float ) sepparm25 ( ) primid ( off ) labelparm34 ( "" ) primidfilter ( '["minmax",{"mode":"idcover"}]' ) primidprecision ( float ) sepparm26 ( ) hituv ( off ) labelparm35 ( "" ) hituvfilter ( '["ubox",{}]' ) hituvprecision ( float3 ) sepparm29 ( ) hitN ( off ) labelparm61 ( "" ) hitNfilter ( '["ubox",{}]' ) hitNprecision ( half3 ) sepparm46 ( ) hitNg ( off ) labelparm63 ( "" ) hitNgfilter ( '["ubox",{}]' ) hitNgprecision ( half3 ) sepparm30 ( ) hitN_facingratio ( off ) labelparm70 ( "" ) hitN_facingratiofilter ( '["ubox",{}]' ) hitN_facingratioprecision ( half ) sepparm38 ( ) hitNg_facingratio ( off ) labelparm69 ( "" ) hitNg_facingratiofilter ( '["ubox",{}]' ) hitNg_facingratioprecision ( half ) sepparm45 ( ) motionvectors ( off ) labelparm67 ( "" ) motionvectorsfilter ( '["ubox",{}]' ) motionvectorsprecision ( half3 ) sepparm33 ( ) velocity ( off ) labelparm66 ( "" ) velocityfilter ( '["ubox",{}]' ) velocityprecision ( half3 ) __extrarendervars ( 0 ) extrarendervars ( 0 ) holdout_shadows ( off ) holdout_shadow_alpha ( 1 ) folder3 ( 0 ) denoiser ( optix ) denoise_usealbedo ( on ) denoise_useN ( on ) denoise_aovs ( C ) denoise_cpu_only ( off ) sepparm11 ( ) tonemap ( off ) tonemapcurve ( 21 ) tonemap_aovs ( C ) tonemap_toe ( 0.5 ) tonemap_shoulder ( 0.5 ) tonemap_utoe ( 0.55 ) tonemap_ushoulder ( 0.26 ) tonemap_slope ( 0.88 ) tonemap_linear ( 0.3 ) tonemap_linearangle ( 0.1 ) tonemap_toelength ( 0.5 ) tonemap_shoulderlength ( 0.5 ) tonemap_shoulderangle ( 1 ) sepparm13 ( ) ocio ( 0 ) aspectRatioConformPolicy ( expandAperture ) dataWindowNDC ( 0 0 1 1 ) pixelAspectRatio ( 1 ) image_artist ( "" ) image_comment ( "" ) image_hostname ( "" ) image_exr_compression ( zips ) image_dwa_compression ( 85 ) custom_metadata ( 0 ) __imageoutput_6 ( 0 ) dcm ( off ) folder8 ( 0 ) dcmfilename ( '$HIP/render/$HIPNAME.$OS.dcm.$F4.exr' ) dcmvars ( '`chs("rendervarsparentprimpath")`/*' ) dcmcompression ( 5 ) dcmofsize ( 3 ) dcmzbias ( 0.001 ) dcmusehitdist ( off ) rendering8 ( 0 ) setlayerrendersettings ( on ) rendering8_1 ( 0 0 0 0 0 ) convergence_mode ( Variance ) __variance ( 1 ) oracle ( variance ) oracle_minsamples ( -1 ) oracle_plane ( C ) oracle_variance ( 0.01 ) oracle_ociomode ( 0 ) oracle_ociodisplay ( 'sRGB - Display' ) oracle_ocioview ( "" ) oracle_ociocolorspace ( default ) folder14 ( 1 ) varianceaa_thresh ( 0.01 ) guiding_enable ( off ) guiding_samples ( 0 ) outputcheckpoint ( off ) productName ( '$HIP/render/$HIPNAME.$OS.$F4.checkpoint' ) savefrequency ( 60 ) resume ( on ) imagemode ( Progressive ) progressivepasses ( 0 ) bucketsize ( 32 ) bucketorder ( Middle ) usecacheratio ( 1 ) cacheratio ( 0.25 ) cachesize ( 1000 ) abortmissingtexture ( off ) abortnogpudevice ( off ) exportcomponents ( 'diffuse reflect coat refract volume sss' ) diffusecomponents ( diffuse ) refractcomponents ( refract ) volumecomponents ( volume ) ssscomponents ( sss ) tonemapcurve1pos ( 0 ) tonemapcurve1value ( tonemapcurve1value ) tonemapcurve1interp ( linear ) tonemapcurve2pos ( 0.05 ) tonemapcurve2value ( tonemapcurve2value ) tonemapcurve2interp ( linear ) tonemapcurve3pos ( 0.1 ) tonemapcurve3value ( tonemapcurve3value ) tonemapcurve3interp ( linear ) tonemapcurve4pos ( 0.15000000000000002 ) tonemapcurve4value ( tonemapcurve4value ) tonemapcurve4interp ( linear ) tonemapcurve5pos ( 0.2 ) tonemapcurve5value ( tonemapcurve5value ) tonemapcurve5interp ( linear ) tonemapcurve6pos ( 0.25 ) tonemapcurve6value ( tonemapcurve6value ) tonemapcurve6interp ( linear ) tonemapcurve7pos ( 0.30000000000000004 ) tonemapcurve7value ( tonemapcurve7value ) tonemapcurve7interp ( linear ) tonemapcurve8pos ( 0.35000000000000003 ) tonemapcurve8value ( tonemapcurve8value ) tonemapcurve8interp ( linear ) tonemapcurve9pos ( 0.4 ) tonemapcurve9value ( tonemapcurve9value ) tonemapcurve9interp ( linear ) tonemapcurve10pos ( 0.45 ) tonemapcurve10value ( tonemapcurve10value ) tonemapcurve10interp ( linear ) tonemapcurve11pos ( 0.5 ) tonemapcurve11value ( tonemapcurve11value ) tonemapcurve11interp ( linear ) tonemapcurve12pos ( 0.55 ) tonemapcurve12value ( tonemapcurve12value ) tonemapcurve12interp ( linear ) tonemapcurve13pos ( 0.6000000000000001 ) tonemapcurve13value ( tonemapcurve13value ) tonemapcurve13interp ( linear ) tonemapcurve14pos ( 0.65 ) tonemapcurve14value ( tonemapcurve14value ) tonemapcurve14interp ( linear ) tonemapcurve15pos ( 0.7000000000000001 ) tonemapcurve15value ( tonemapcurve15value ) tonemapcurve15interp ( linear ) tonemapcurve16pos ( 0.75 ) tonemapcurve16value ( tonemapcurve16value ) tonemapcurve16interp ( linear ) tonemapcurve17pos ( 0.8 ) tonemapcurve17value ( tonemapcurve17value ) tonemapcurve17interp ( linear ) tonemapcurve18pos ( 0.8500000000000001 ) tonemapcurve18value ( tonemapcurve18value ) tonemapcurve18interp ( linear ) tonemapcurve19pos ( 0.9 ) tonemapcurve19value ( tonemapcurve19value ) tonemapcurve19interp ( linear ) tonemapcurve20pos ( 0.9500000000000001 ) tonemapcurve20value ( tonemapcurve20value ) tonemapcurve20interp ( linear ) tonemapcurve21pos ( 1 ) tonemapcurve21value ( tonemapcurve21value ) tonemapcurve21interp ( linear )
chlock karmarendersettings1 -* +resolutiony +tonemapcurve +tonemapcurve1value +tonemapcurve1interp +tonemapcurve2value +tonemapcurve2interp +tonemapcurve3value +tonemapcurve3interp +tonemapcurve4value +tonemapcurve4interp +tonemapcurve5value +tonemapcurve5interp +tonemapcurve6value +tonemapcurve6interp +tonemapcurve7value +tonemapcurve7interp +tonemapcurve8value +tonemapcurve8interp +tonemapcurve9value +tonemapcurve9interp +tonemapcurve10value +tonemapcurve10interp +tonemapcurve11value +tonemapcurve11interp +tonemapcurve12value +tonemapcurve12interp +tonemapcurve13value +tonemapcurve13interp +tonemapcurve14value +tonemapcurve14interp +tonemapcurve15value +tonemapcurve15interp +tonemapcurve16value +tonemapcurve16interp +tonemapcurve17value +tonemapcurve17interp +tonemapcurve18value +tonemapcurve18interp +tonemapcurve19value +tonemapcurve19interp +tonemapcurve20value +tonemapcurve20interp +tonemapcurve21value +tonemapcurve21interp
chautoscope karmarendersettings1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -D off karmarendersettings1
opexprlanguage -s hscript karmarendersettings1
opuserdata -n '___Version___' -v '' karmarendersettings1
opuserdata -n 'sidefx::parm_filter_text_pattern' -v 'tonem' karmarendersettings1
oporder -e sopimport1 materiallibrary1 camera1 karmaphysicalsky1 karmarendersettings usdrender_rop1 karmarendersettings1 karmaphysicalsky2 
opcf ..

# Node tasks (/tasks)
oporder -e obj out ch shop img vex mat stage tasks 

opcf /
opcf obj
opcf Jellyfish
opwire -n line1 -0 bind_tip
opwire -n bind_tip -0 bend_main
opwire -n matchsize1 -0 revolve1
opwire -n bend_main -0 matchsize1
opwire -n revolve1 -0 fuse1
opwire -n fuse1 -0 mountain1
opwire -n mountain1 -0 transform1
opwire -n transform1 -0 polyextrude1
opwire -n polyextrude1 -0 OUT_BELL
opwire -n grid1 -0 attribwrangle1
opwire -n attribwrangle1 -0 twist1
opwire -n -o 1 vellumsolver1 -0 OUT_ARMS
opwire -n twist1 -0 remesh1
opwire -n matchsize3 -0 transform2
opwire -n transform2 -0 copy1
opwire -n copy1 -0 pointdeform1
opwire -n timeshift1 -1 pointdeform1
opwire -n extractcentroid1 -2 pointdeform1
opwire -n extractcentroid1 -0 timeshift1
opwire -n object_merge1 -0 extractcentroid1
opwire -n polyextrude2 -0 vellumconstraints1
opwire -n vellumconstraints2 -0 vellumsolver1
opwire -n -o 1 vellumconstraints2 -1 vellumsolver1
opwire -n matchsize2 -0 Points_To_Pin
opwire -n remesh1 -0 matchsize2
opwire -n Points_To_Pin -0 matchsize3
opwire -n vellumconstraints1 -0 vellumconstraints2
opwire -n -o 1 vellumconstraints1 -1 vellumconstraints2
opwire -n pointdeform2 -0 OUT_VEINS
opwire -n object_merge2 -0 remesh2
opwire -n timeshift2 -0 Starting_Points
opwire -n remesh2 -0 matchsize4
opwire -n End_Points -0 matchsize5
opwire -n Starting_Points -0 End_Points
opwire -n matchsize5 -0 findshortestpath1
opwire -n findshortestpath1 -0 smooth1
opwire -n matchsize4 -0 timeshift2
opwire -n smooth1 -0 sweep1
opwire -n sweep1 -0 pointdeform2
opwire -n timeshift3 -1 pointdeform2
opwire -n object_merge4 -2 pointdeform2
opwire -n object_merge4 -0 timeshift3
opwire -n transform4 -0 OUT_ORGANS
opwire -n line2 -0 bend1
opwire -n bend1 -0 matchsize6
opwire -n matchsize6 -0 transform3
opwire -n sweep2 -0 copy2
opwire -n transform3 -0 sweep2
opwire -n extractcentroid2 -0 timeshift4
opwire -n object_merge5 -0 extractcentroid2
opwire -n copy2 -0 pointdeform3
opwire -n timeshift4 -1 pointdeform3
opwire -n extractcentroid2 -2 pointdeform3
opwire -n pointdeform3 -0 transform4
opwire -n sweep3 -0 OUT_TENTACLES
opwire -n timeshift5 -0 matchsize7
opwire -n matchsize7 -0 Tentacle_Points
opwire -n line3 -0 copytopoints1
opwire -n pointdeform4 -1 copytopoints1
opwire -n Tentacle_Points -0 matchsize8
opwire -n copytopoints1 -0 groupexpression1
opwire -n transform1 -0 OUT_BELL_PREEXTRUDE
opwire -n groupexpression1 -0 vellumconstraints3
opwire -n vellumconstraints4 -0 vellumsolver2
opwire -n -o 1 vellumconstraints4 -1 vellumsolver2
opwire -n -o 2 vellumconstraints4 -2 vellumsolver2
opwire -n vellumconstraints3 -0 vellumconstraints4
opwire -n -o 1 vellumconstraints3 -1 vellumconstraints4
opwire -n -o 2 vellumconstraints3 -2 vellumconstraints4
opwire -n object_merge6 -0 timeshift5
opwire -n matchsize8 -0 pointdeform4
opwire -n matchsize8 -1 pointdeform4
opwire -n object_merge6 -2 pointdeform4
opwire -n vellumsolver2 -0 sweep3
opwire -n pointdeform1 -0 polyextrude2
opcf ..
opcf ..
opcf stage
opwire -n sopimport1 -0 materiallibrary1
opcf materiallibrary1
opcf jellyfish
opwire -n mtlxstandard_surface -0 Material_Outputs_and_AOVs
opwire -n mtlxdisplacement -1 Material_Outputs_and_AOVs
opwire -n material_properties -2 Material_Outputs_and_AOVs
opcf ..
opcf ..
opwire -n materiallibrary1 -0 camera1
opwire -n camera1 -0 karmaphysicalsky1
opwire -n karmaphysicalsky2 -0 karmarendersettings
opwire -n karmarendersettings -0 usdrender_rop1
opwire -n karmaphysicalsky2 -0 karmarendersettings1
opwire -n karmaphysicalsky1 -0 karmaphysicalsky2
opcf ..
opcf $saved_path
