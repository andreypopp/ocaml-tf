(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_script__storage_location = {
  bucket : string;  (** bucket *)
  key : string;  (** key *)
  object_version : string option; [@option]  (** object_version *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_gamelift_script__storage_location *)

type aws_gamelift_script = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string option; [@option]  (** version *)
  zip_file : string option; [@option]  (** zip_file *)
  storage_location : aws_gamelift_script__storage_location list;
}
[@@deriving yojson_of]
(** aws_gamelift_script *)

let aws_gamelift_script ?tags ?version ?zip_file ~name
    ~storage_location __resource_id =
  let __resource_type = "aws_gamelift_script" in
  let __resource =
    { name; tags; version; zip_file; storage_location }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_script __resource);
  ()
