(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_radius_settings__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_directory_service_radius_settings__timeouts *)

type aws_directory_service_radius_settings = {
  authentication_protocol : string prop;
      (** authentication_protocol *)
  directory_id : string prop;  (** directory_id *)
  display_label : string prop;  (** display_label *)
  id : string prop option; [@option]  (** id *)
  radius_port : float prop;  (** radius_port *)
  radius_retries : float prop;  (** radius_retries *)
  radius_servers : string prop list;  (** radius_servers *)
  radius_timeout : float prop;  (** radius_timeout *)
  shared_secret : string prop;  (** shared_secret *)
  use_same_username : bool prop option; [@option]
      (** use_same_username *)
  timeouts : aws_directory_service_radius_settings__timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_radius_settings *)

let aws_directory_service_radius_settings ?id ?use_same_username
    ?timeouts ~authentication_protocol ~directory_id ~display_label
    ~radius_port ~radius_retries ~radius_servers ~radius_timeout
    ~shared_secret __resource_id =
  let __resource_type = "aws_directory_service_radius_settings" in
  let __resource =
    {
      authentication_protocol;
      directory_id;
      display_label;
      id;
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
