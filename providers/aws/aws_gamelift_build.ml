(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type storage_location = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
  object_version : string prop option; [@option]
      (** object_version *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** storage_location *)

type aws_gamelift_build = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  operating_system : string prop;  (** operating_system *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop option; [@option]  (** version *)
  storage_location : storage_location list;
}
[@@deriving yojson_of]
(** aws_gamelift_build *)

let storage_location ?object_version ~bucket ~key ~role_arn () :
    storage_location =
  { bucket; key; object_version; role_arn }

let aws_gamelift_build ?id ?tags ?tags_all ?version ~name
    ~operating_system ~storage_location () : aws_gamelift_build =
  {
    id;
    name;
    operating_system;
    tags;
    tags_all;
    version;
    storage_location;
  }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  operating_system : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let register ?tf_module ?id ?tags ?tags_all ?version ~name
    ~operating_system ~storage_location __resource_id =
  let __resource_type = "aws_gamelift_build" in
  let __resource =
    aws_gamelift_build ?id ?tags ?tags_all ?version ~name
      ~operating_system ~storage_location ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_build __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       operating_system =
         Prop.computed __resource_type __resource_id
           "operating_system";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
