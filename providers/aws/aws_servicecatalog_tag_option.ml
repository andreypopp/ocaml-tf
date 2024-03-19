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

type aws_servicecatalog_tag_option = {
  active : bool prop option; [@option]  (** active *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_tag_option *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_tag_option ?active ?id ?timeouts ~key ~value
    () : aws_servicecatalog_tag_option =
  { active; id; key; value; timeouts }

type t = {
  active : bool prop;
  id : string prop;
  key : string prop;
  owner : string prop;
  value : string prop;
}

let register ?tf_module ?active ?id ?timeouts ~key ~value
    __resource_id =
  let __resource_type = "aws_servicecatalog_tag_option" in
  let __resource =
    aws_servicecatalog_tag_option ?active ?id ?timeouts ~key ~value
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_servicecatalog_tag_option __resource);
  let __resource_attributes =
    ({
       active = Prop.computed __resource_type __resource_id "active";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       owner = Prop.computed __resource_type __resource_id "owner";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
