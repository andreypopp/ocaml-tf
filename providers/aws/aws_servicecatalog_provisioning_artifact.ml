(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?accept_language ?active ?description
    ?disable_template_validation ?guidance ?id ?name
    ?template_physical_id ?template_url ?type_ ?timeouts ~product_id
    __resource_id =
  let __resource_type = "aws_servicecatalog_provisioning_artifact" in
  let __resource =
    aws_servicecatalog_provisioning_artifact ?accept_language ?active
      ?description ?disable_template_validation ?guidance ?id ?name
      ?template_physical_id ?template_url ?type_ ?timeouts
      ~product_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_provisioning_artifact __resource);
  let __resource_attributes =
    ({
       accept_language =
         Prop.computed __resource_type __resource_id
           "accept_language";
       active = Prop.computed __resource_type __resource_id "active";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       disable_template_validation =
         Prop.computed __resource_type __resource_id
           "disable_template_validation";
       guidance =
         Prop.computed __resource_type __resource_id "guidance";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       product_id =
         Prop.computed __resource_type __resource_id "product_id";
       provisioning_artifact_id =
         Prop.computed __resource_type __resource_id
           "provisioning_artifact_id";
       template_physical_id =
         Prop.computed __resource_type __resource_id
           "template_physical_id";
       template_url =
         Prop.computed __resource_type __resource_id "template_url";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
