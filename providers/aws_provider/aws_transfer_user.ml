(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_transfer_user__home_directory_mappings = {
  entry : string;  (** entry *)
  target : string;  (** target *)
}
[@@deriving yojson_of]
(** aws_transfer_user__home_directory_mappings *)

type aws_transfer_user__posix_profile = {
  gid : float;  (** gid *)
  secondary_gids : float list option; [@option]
      (** secondary_gids *)
  uid : float;  (** uid *)
}
[@@deriving yojson_of]
(** aws_transfer_user__posix_profile *)

type aws_transfer_user__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_transfer_user__timeouts *)

type aws_transfer_user = {
  home_directory : string option; [@option]  (** home_directory *)
  home_directory_type : string option; [@option]
      (** home_directory_type *)
  policy : string option; [@option]  (** policy *)
  role : string;  (** role *)
  server_id : string;  (** server_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_name : string;  (** user_name *)
  home_directory_mappings :
    aws_transfer_user__home_directory_mappings list;
  posix_profile : aws_transfer_user__posix_profile list;
  timeouts : aws_transfer_user__timeouts option;
}
[@@deriving yojson_of]
(** aws_transfer_user *)

let aws_transfer_user ?home_directory ?home_directory_type ?policy
    ?tags ?timeouts ~role ~server_id ~user_name
    ~home_directory_mappings ~posix_profile __resource_id =
  let __resource_type = "aws_transfer_user" in
  let __resource =
    {
      home_directory;
      home_directory_type;
      policy;
      role;
      server_id;
      tags;
      user_name;
      home_directory_mappings;
      posix_profile;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_user __resource);
  ()
