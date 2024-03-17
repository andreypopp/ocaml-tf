(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_devicefarm_device_pool__rule = {
  attribute : string prop option; [@option]  (** attribute *)
  operator : string prop option; [@option]  (** operator *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_devicefarm_device_pool__rule *)

type aws_devicefarm_device_pool = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  max_devices : float prop option; [@option]  (** max_devices *)
  name : string prop;  (** name *)
  project_arn : string prop;  (** project_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  rule : aws_devicefarm_device_pool__rule list;
}
[@@deriving yojson_of]
(** aws_devicefarm_device_pool *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  max_devices : float prop;
  name : string prop;
  project_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_devicefarm_device_pool ?description ?id ?max_devices ?tags
    ?tags_all ~name ~project_arn ~rule __resource_id =
  let __resource_type = "aws_devicefarm_device_pool" in
  let __resource =
    ({
       description;
       id;
       max_devices;
       name;
       project_arn;
       tags;
       tags_all;
       rule;
     }
      : aws_devicefarm_device_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_devicefarm_device_pool __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       max_devices =
         Prop.computed __resource_type __resource_id "max_devices";
       name = Prop.computed __resource_type __resource_id "name";
       project_arn =
         Prop.computed __resource_type __resource_id "project_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
