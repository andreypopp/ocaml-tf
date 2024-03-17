(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_origin__private_link = {
  location : string prop;  (** location *)
  private_link_target_id : string prop;
      (** private_link_target_id *)
  request_message : string prop option; [@option]
      (** request_message *)
  target_type : string prop option; [@option]  (** target_type *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin__private_link *)

type azurerm_cdn_frontdoor_origin__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin__timeouts *)

type azurerm_cdn_frontdoor_origin = {
  cdn_frontdoor_origin_group_id : string prop;
      (** cdn_frontdoor_origin_group_id *)
  certificate_name_check_enabled : bool prop;
      (** certificate_name_check_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  health_probes_enabled : bool prop option; [@option]
      (** health_probes_enabled *)
  host_name : string prop;  (** host_name *)
  http_port : float prop option; [@option]  (** http_port *)
  https_port : float prop option; [@option]  (** https_port *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  origin_host_header : string prop option; [@option]
      (** origin_host_header *)
  priority : float prop option; [@option]  (** priority *)
  weight : float prop option; [@option]  (** weight *)
  private_link : azurerm_cdn_frontdoor_origin__private_link list;
  timeouts : azurerm_cdn_frontdoor_origin__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin *)

let azurerm_cdn_frontdoor_origin ?enabled ?health_probes_enabled
    ?http_port ?https_port ?id ?origin_host_header ?priority ?weight
    ?timeouts ~cdn_frontdoor_origin_group_id
    ~certificate_name_check_enabled ~host_name ~name ~private_link
    __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_origin" in
  let __resource =
    {
      cdn_frontdoor_origin_group_id;
      certificate_name_check_enabled;
      enabled;
      health_probes_enabled;
      host_name;
      http_port;
      https_port;
      id;
      name;
      origin_host_header;
      priority;
      weight;
      private_link;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_origin __resource);
  ()
