(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_directory_service_radius_settings__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_directory_service_radius_settings__timeouts *)

type aws_directory_service_radius_settings = {
  authentication_protocol : string;  (** authentication_protocol *)
  directory_id : string;  (** directory_id *)
  display_label : string;  (** display_label *)
  radius_port : float;  (** radius_port *)
  radius_retries : float;  (** radius_retries *)
  radius_servers : string list;  (** radius_servers *)
  radius_timeout : float;  (** radius_timeout *)
  shared_secret : string;  (** shared_secret *)
  use_same_username : bool option; [@option]
      (** use_same_username *)
  timeouts : aws_directory_service_radius_settings__timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_radius_settings *)

let aws_directory_service_radius_settings ?use_same_username
    ?timeouts ~authentication_protocol ~directory_id ~display_label
    ~radius_port ~radius_retries ~radius_servers ~radius_timeout
    ~shared_secret __resource_id =
  let __resource_type = "aws_directory_service_radius_settings" in
  let __resource =
    {
      authentication_protocol;
      directory_id;
      display_label;
      radius_port;
      radius_retries;
      radius_servers;
      radius_timeout;
      shared_secret;
      use_same_username;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_radius_settings __resource);
  ()
