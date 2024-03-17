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
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  operating_system : string;  (** operating_system *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  version : string option; [@option]  (** version *)
  storage_location : aws_gamelift_build__storage_location list;
}
[@@deriving yojson_of]
(** aws_gamelift_build *)

let aws_gamelift_build ?id ?tags ?tags_all ?version ~name
    ~operating_system ~storage_location __resource_id =
  let __resource_type = "aws_gamelift_build" in
  let __resource =
    {
      id;
      name;
      operating_system;
      tags;
      tags_all;
      version;
      storage_location;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_build __resource);
  ()
