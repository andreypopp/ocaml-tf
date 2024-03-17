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

type t = {
  authentication_protocol : string prop;
  directory_id : string prop;
  display_label : string prop;
  id : string prop;
  radius_port : float prop;
  radius_retries : float prop;
  radius_servers : string list prop;
  radius_timeout : float prop;
  shared_secret : string prop;
  use_same_username : bool prop;
}

let aws_directory_service_radius_settings ?id ?use_same_username
    ?timeouts ~authentication_protocol ~directory_id ~display_label
    ~radius_port ~radius_retries ~radius_servers ~radius_timeout
    ~shared_secret __resource_id =
  let __resource_type = "aws_directory_service_radius_settings" in
  let __resource =
    ({
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
      : aws_directory_service_radius_settings)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_radius_settings __resource);
  let __resource_attributes =
    ({
       authentication_protocol =
         Prop.computed __resource_type __resource_id
           "authentication_protocol";
       directory_id =
         Prop.computed __resource_type __resource_id "directory_id";
       display_label =
         Prop.computed __resource_type __resource_id "display_label";
       id = Prop.computed __resource_type __resource_id "id";
       radius_port =
         Prop.computed __resource_type __resource_id "radius_port";
       radius_retries =
         Prop.computed __resource_type __resource_id "radius_retries";
       radius_servers =
         Prop.computed __resource_type __resource_id "radius_servers";
       radius_timeout =
         Prop.computed __resource_type __resource_id "radius_timeout";
       shared_secret =
         Prop.computed __resource_type __resource_id "shared_secret";
       use_same_username =
         Prop.computed __resource_type __resource_id
           "use_same_username";
     }
      : t)
  in
  __resource_attributes
