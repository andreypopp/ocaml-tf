(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_access__home_directory_mappings = {
  entry : string;  (** entry *)
  target : string;  (** target *)
}
[@@deriving yojson_of]
(** aws_transfer_access__home_directory_mappings *)

type aws_transfer_access__posix_profile = {
  gid : float;  (** gid *)
  secondary_gids : float list option; [@option]
      (** secondary_gids *)
  uid : float;  (** uid *)
}
[@@deriving yojson_of]
(** aws_transfer_access__posix_profile *)

type aws_transfer_access = {
  external_id : string;  (** external_id *)
  home_directory : string option; [@option]  (** home_directory *)
  home_directory_type : string option; [@option]
      (** home_directory_type *)
  id : string option; [@option]  (** id *)
  policy : string option; [@option]  (** policy *)
  role : string option; [@option]  (** role *)
  server_id : string;  (** server_id *)
  home_directory_mappings :
    aws_transfer_access__home_directory_mappings list;
  posix_profile : aws_transfer_access__posix_profile list;
}
[@@deriving yojson_of]
(** aws_transfer_access *)

let aws_transfer_access ?home_directory ?home_directory_type ?id
    ?policy ?role ~external_id ~server_id ~home_directory_mappings
    ~posix_profile __resource_id =
  let __resource_type = "aws_transfer_access" in
  let __resource =
    {
      external_id;
      home_directory;
      home_directory_type;
      id;
      policy;
      role;
      server_id;
      home_directory_mappings;
      posix_profile;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_access __resource);
  ()
