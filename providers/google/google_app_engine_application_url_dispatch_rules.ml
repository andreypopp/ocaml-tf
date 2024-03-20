(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dispatch_rules = {
  domain : string prop option; [@option]
      (** Domain name to match against. The wildcard * is supported if specified before a period: *..
Defaults to matching all domains: *. *)
  path : string prop;
      (** Pathname within the host. Must start with a /. A single * can be included at the end of the path.
The sum of the lengths of the domain and path may not exceed 100 characters. *)
  service : string prop;
      (** Pathname within the host. Must start with a /. A single * can be included at the end of the path.
The sum of the lengths of the domain and path may not exceed 100 characters. *)
}
[@@deriving yojson_of]
(** Rules to match an HTTP request and dispatch that request to a service. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_app_engine_application_url_dispatch_rules = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  dispatch_rules : dispatch_rules list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_application_url_dispatch_rules *)

let dispatch_rules ?domain ~path ~service () : dispatch_rules =
  { domain; path; service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_application_url_dispatch_rules ?id ?project
    ?timeouts ~dispatch_rules () :
    google_app_engine_application_url_dispatch_rules =
  { id; project; dispatch_rules; timeouts }

type t = { id : string prop; project : string prop }

let make ?id ?project ?timeouts ~dispatch_rules __id =
  let __type = "google_app_engine_application_url_dispatch_rules" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_application_url_dispatch_rules
        (google_app_engine_application_url_dispatch_rules ?id
           ?project ?timeouts ~dispatch_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~dispatch_rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~dispatch_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
