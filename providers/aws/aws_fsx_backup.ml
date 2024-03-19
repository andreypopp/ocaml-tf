(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fsx_backup = {
  file_system_id : string prop option; [@option]
      (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  volume_id : string prop option; [@option]  (** volume_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_backup *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_fsx_backup ?file_system_id ?id ?tags ?tags_all ?volume_id
    ?timeouts () : aws_fsx_backup =
  { file_system_id; id; tags; tags_all; volume_id; timeouts }

type t = {
  arn : string prop;
  file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  volume_id : string prop;
}

let register ?tf_module ?file_system_id ?id ?tags ?tags_all
    ?volume_id ?timeouts __resource_id =
  let __resource_type = "aws_fsx_backup" in
  let __resource =
    aws_fsx_backup ?file_system_id ?id ?tags ?tags_all ?volume_id
      ?timeouts ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_backup __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       file_system_id =
         Prop.computed __resource_type __resource_id "file_system_id";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
     }
      : t)
  in
  __resource_attributes
