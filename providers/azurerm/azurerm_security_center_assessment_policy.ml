(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_security_center_assessment_policy = {
  categories : string prop list option; [@option]
  description : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  implementation_effort : string prop option; [@option]
  remediation_description : string prop option; [@option]
  severity : string prop option; [@option]
  threats : string prop list option; [@option]
  user_impact : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_security_center_assessment_policy) -> ()

let yojson_of_azurerm_security_center_assessment_policy =
  (function
   | {
       categories = v_categories;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       implementation_effort = v_implementation_effort;
       remediation_description = v_remediation_description;
       severity = v_severity;
       threats = v_threats;
       user_impact = v_user_impact;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_user_impact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_impact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threats with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "threats", arg in
             bnd :: bnds
       in
       let bnds =
         match v_severity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "severity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remediation_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remediation_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_implementation_effort with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "implementation_effort", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         match v_categories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "categories", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_security_center_assessment_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_security_center_assessment_policy

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_assessment_policy ?categories ?id
    ?implementation_effort ?remediation_description ?severity
    ?threats ?user_impact ?timeouts ~description ~display_name () :
    azurerm_security_center_assessment_policy =
  {
    categories;
    description;
    display_name;
    id;
    implementation_effort;
    remediation_description;
    severity;
    threats;
    user_impact;
    timeouts;
  }

type t = {
  categories : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  implementation_effort : string prop;
  name : string prop;
  remediation_description : string prop;
  severity : string prop;
  threats : string list prop;
  user_impact : string prop;
}

let make ?categories ?id ?implementation_effort
    ?remediation_description ?severity ?threats ?user_impact
    ?timeouts ~description ~display_name __id =
  let __type = "azurerm_security_center_assessment_policy" in
  let __attrs =
    ({
       categories = Prop.computed __type __id "categories";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       implementation_effort =
         Prop.computed __type __id "implementation_effort";
       name = Prop.computed __type __id "name";
       remediation_description =
         Prop.computed __type __id "remediation_description";
       severity = Prop.computed __type __id "severity";
       threats = Prop.computed __type __id "threats";
       user_impact = Prop.computed __type __id "user_impact";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_assessment_policy
        (azurerm_security_center_assessment_policy ?categories ?id
           ?implementation_effort ?remediation_description ?severity
           ?threats ?user_impact ?timeouts ~description ~display_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?categories ?id ?implementation_effort
    ?remediation_description ?severity ?threats ?user_impact
    ?timeouts ~description ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?categories ?id ?implementation_effort
      ?remediation_description ?severity ?threats ?user_impact
      ?timeouts ~description ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
