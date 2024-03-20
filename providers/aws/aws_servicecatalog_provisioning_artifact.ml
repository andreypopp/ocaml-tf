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

type aws_servicecatalog_provisioning_artifact = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  active : bool prop option; [@option]  (** active *)
  description : string prop option; [@option]  (** description *)
  disable_template_validation : bool prop option; [@option]
      (** disable_template_validation *)
  guidance : string prop option; [@option]  (** guidance *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  product_id : string prop;  (** product_id *)
  template_physical_id : string prop option; [@option]
      (** template_physical_id *)
  template_url : string prop option; [@option]  (** template_url *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_provisioning_artifact *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_provisioning_artifact ?accept_language ?active
    ?description ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    () : aws_servicecatalog_provisioning_artifact =
  {
    accept_language;
    active;
    description;
    disable_template_validation;
    guidance;
    id;
    name;
    product_id;
    template_physical_id;
    template_url;
    type_;
    timeouts;
  }

type t = {
  accept_language : string prop;
  active : bool prop;
  created_time : string prop;
  description : string prop;
  disable_template_validation : bool prop;
  guidance : string prop;
  id : string prop;
  name : string prop;
  product_id : string prop;
  provisioning_artifact_id : string prop;
  template_physical_id : string prop;
  template_url : string prop;
  type_ : string prop;
}

let make ?accept_language ?active ?description
    ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    __id =
  let __type = "aws_servicecatalog_provisioning_artifact" in
  let __attrs =
    ({
       accept_language = Prop.computed __type __id "accept_language";
       active = Prop.computed __type __id "active";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       disable_template_validation =
         Prop.computed __type __id "disable_template_validation";
       guidance = Prop.computed __type __id "guidance";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       product_id = Prop.computed __type __id "product_id";
       provisioning_artifact_id =
         Prop.computed __type __id "provisioning_artifact_id";
       template_physical_id =
         Prop.computed __type __id "template_physical_id";
       template_url = Prop.computed __type __id "template_url";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_provisioning_artifact
        (aws_servicecatalog_provisioning_artifact ?accept_language
           ?active ?description ?disable_template_validation
           ?guidance ?id ?name ?template_physical_id ?template_url
           ?type_ ?timeouts ~product_id ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?active ?description
    ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?active ?description
      ?disable_template_validation ?guidance ?id ?name
      ?template_physical_id ?template_url ?type_ ?timeouts
      ~product_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
