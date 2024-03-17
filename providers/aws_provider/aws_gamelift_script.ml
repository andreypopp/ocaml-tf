(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_script__storage_location = {
  bucket : string prop;  (** bucket *)
  key : string prop;  (** key *)
  object_version : string prop option; [@option]
      (** object_version *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_gamelift_script__storage_location *)

type aws_gamelift_script = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop option; [@option]  (** version *)
  zip_file : string prop option; [@option]  (** zip_file *)
  storage_location : aws_gamelift_script__storage_location list;
}
[@@deriving yojson_of]
(** aws_gamelift_script *)

let aws_gamelift_script ?id ?tags ?tags_all ?version ?zip_file ~name
    ~storage_location __resource_id =
  let __resource_type = "aws_gamelift_script" in
  let __resource =
    { id; name; tags; tags_all; version; zip_file; storage_location }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_script __resource);
  ()
