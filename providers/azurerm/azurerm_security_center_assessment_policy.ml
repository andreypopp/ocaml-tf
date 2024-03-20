(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_security_center_assessment_policy = {
  categories : string prop list option; [@option]  (** categories *)
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  implementation_effort : string prop option; [@option]
      (** implementation_effort *)
  remediation_description : string prop option; [@option]
      (** remediation_description *)
  severity : string prop option; [@option]  (** severity *)
  threats : string prop list option; [@option]  (** threats *)
  user_impact : string prop option; [@option]  (** user_impact *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment_policy *)

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
