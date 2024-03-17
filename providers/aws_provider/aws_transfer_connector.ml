(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_connector__as2_config = {
  compression : string prop;  (** compression *)
  encryption_algorithm : string prop;  (** encryption_algorithm *)
  local_profile_id : string prop;  (** local_profile_id *)
  mdn_response : string prop;  (** mdn_response *)
  mdn_signing_algorithm : string prop option; [@option]
      (** mdn_signing_algorithm *)
  message_subject : string prop option; [@option]
      (** message_subject *)
  partner_profile_id : string prop;  (** partner_profile_id *)
  signing_algorithm : string prop;  (** signing_algorithm *)
}
[@@deriving yojson_of]
(** aws_transfer_connector__as2_config *)

type aws_transfer_connector__sftp_config = {
  trusted_host_keys : string prop list option; [@option]
      (** trusted_host_keys *)
  user_secret_id : string prop option; [@option]
      (** user_secret_id *)
}
[@@deriving yojson_of]
(** aws_transfer_connector__sftp_config *)

type aws_transfer_connector = {
  access_role : string prop;  (** access_role *)
  id : string prop option; [@option]  (** id *)
  logging_role : string prop option; [@option]  (** logging_role *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  url : string prop;  (** url *)
  as2_config : aws_transfer_connector__as2_config list;
  sftp_config : aws_transfer_connector__sftp_config list;
}
[@@deriving yojson_of]
(** aws_transfer_connector *)

let aws_transfer_connector ?id ?logging_role ?tags ?tags_all
    ~access_role ~url ~as2_config ~sftp_config __resource_id =
  let __resource_type = "aws_transfer_connector" in
  let __resource =
    {
      access_role;
      id;
      logging_role;
      tags;
      tags_all;
      url;
      as2_config;
      sftp_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_connector __resource);
  ()
