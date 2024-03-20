(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_pages_domain = {
  account_id : string prop;
  domain : string prop;
  id : string prop option; [@option]
  project_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_pages_domain) -> ()

let yojson_of_cloudflare_pages_domain =
  (function
   | {
       account_id = v_account_id;
       domain = v_domain;
       id = v_id;
       project_name = v_project_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_name in
         ("project_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_pages_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_pages_domain

[@@@deriving.end]

let cloudflare_pages_domain ?id ~account_id ~domain ~project_name ()
    : cloudflare_pages_domain =
  { account_id; domain; id; project_name }

type t = {
  account_id : string prop;
  domain : string prop;
  id : string prop;
  project_name : string prop;
  status : string prop;
}

let make ?id ~account_id ~domain ~project_name __id =
  let __type = "cloudflare_pages_domain" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       project_name = Prop.computed __type __id "project_name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_pages_domain
        (cloudflare_pages_domain ?id ~account_id ~domain
           ~project_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~domain ~project_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~domain ~project_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
