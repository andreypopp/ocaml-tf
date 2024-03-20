(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_iap_client = {
  brand : string prop;
      (** Identifier of the brand to which this client
is attached to. The format is
'projects/{project_number}/brands/{brand_id}/identityAwareProxyClients/{client_id}'. *)
  display_name : string prop;
      (** Human-friendly name given to the OAuth client. *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_iap_client *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_iap_client ?id ?timeouts ~brand ~display_name () :
    google_iap_client =
  { brand; display_name; id; timeouts }

type t = {
  brand : string prop;
  client_id : string prop;
  display_name : string prop;
  id : string prop;
  secret : string prop;
}

let make ?id ?timeouts ~brand ~display_name __id =
  let __type = "google_iap_client" in
  let __attrs =
    ({
       brand = Prop.computed __type __id "brand";
       client_id = Prop.computed __type __id "client_id";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       secret = Prop.computed __type __id "secret";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_client
        (google_iap_client ?id ?timeouts ~brand ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~brand ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~brand ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
