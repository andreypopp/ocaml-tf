(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_frontdoor_endpoint = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_endpoint *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_endpoint ?enabled ?id ?tags ?timeouts
    ~cdn_frontdoor_profile_id ~name () :
    azurerm_cdn_frontdoor_endpoint =
  { cdn_frontdoor_profile_id; enabled; id; name; tags; timeouts }

type t = {
  cdn_frontdoor_profile_id : string prop;
  enabled : bool prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?enabled ?id ?tags ?timeouts ~cdn_frontdoor_profile_id ~name
    __id =
  let __type = "azurerm_cdn_frontdoor_endpoint" in
  let __attrs =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       enabled = Prop.computed __type __id "enabled";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_endpoint
        (azurerm_cdn_frontdoor_endpoint ?enabled ?id ?tags ?timeouts
           ~cdn_frontdoor_profile_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?timeouts
    ~cdn_frontdoor_profile_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ?timeouts ~cdn_frontdoor_profile_id ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
