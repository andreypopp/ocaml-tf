(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_build__storage_location = {
  bucket : string;  (** bucket *)
  key : string;  (** key *)
  object_version : string option; [@option]  (** object_version *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_gamelift_build__storage_location *)

type aws_gamelift_build = {
  name : string;  (** name *)
  operating_system : string;  (** operating_system *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string option; [@option]  (** version *)
  storage_location : aws_gamelift_build__storage_location list;
}
[@@deriving yojson_of]
(** aws_gamelift_build *)

let aws_gamelift_build ?tags ?version ~name ~operating_system
    ~storage_location __resource_id =
  let __resource_type = "aws_gamelift_build" in
  let __resource =
    { name; operating_system; tags; version; storage_location }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_build __resource);
  ()
