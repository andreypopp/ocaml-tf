(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_servicecatalog_tag_option__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_servicecatalog_tag_option__timeouts *)

type aws_servicecatalog_tag_option = {
  active : bool prop option; [@option]  (** active *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
  timeouts : aws_servicecatalog_tag_option__timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_tag_option *)

type t = {
  active : bool prop;
  id : string prop;
  key : string prop;
  owner : string prop;
  value : string prop;
}

let aws_servicecatalog_tag_option ?active ?id ?timeouts ~key ~value
    __resource_id =
  let __resource_type = "aws_servicecatalog_tag_option" in
  let __resource =
    ({ active; id; key; value; timeouts }
      : aws_servicecatalog_tag_option)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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
