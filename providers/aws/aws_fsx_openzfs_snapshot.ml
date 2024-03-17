(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_openzfs_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_snapshot__timeouts *)

type aws_fsx_openzfs_snapshot = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_id : string prop;  (** volume_id *)
  timeouts : aws_fsx_openzfs_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_openzfs_snapshot *)

type t = {
  arn : string prop;
  creation_time : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  volume_id : string prop;
}

let aws_fsx_openzfs_snapshot ?id ?tags ?tags_all ?timeouts ~name
    ~volume_id __resource_id =
  let __resource_type = "aws_fsx_openzfs_snapshot" in
  let __resource =
    ({ id; name; tags; tags_all; volume_id; timeouts }
      : aws_fsx_openzfs_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_openzfs_snapshot __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
     }
      : t)
  in
  __resource_attributes
