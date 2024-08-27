(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_domain_delegation = {
  domain : string prop;
  name_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_domain_delegation) -> ()

let yojson_of_dnsimple_domain_delegation =
  (function
   | { domain = v_domain; name_servers = v_name_servers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_name_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_name_servers
           in
           let bnd = "name_servers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : dnsimple_domain_delegation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_domain_delegation

[@@@deriving.end]

let dnsimple_domain_delegation ~domain ~name_servers () :
    dnsimple_domain_delegation =
  { domain; name_servers }

type t = {
  tf_name : string;
  domain : string prop;
  id : string prop;
  name_servers : string list prop;
}

let make ~domain ~name_servers __id =
  let __type = "dnsimple_domain_delegation" in
  let __attrs =
    ({
       tf_name = __id;
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       name_servers = Prop.computed __type __id "name_servers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_domain_delegation
        (dnsimple_domain_delegation ~domain ~name_servers ());
    attrs = __attrs;
  }

let register ?tf_module ~domain ~name_servers __id =
  let (r : _ Tf_core.resource) = make ~domain ~name_servers __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
