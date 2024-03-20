(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_web3_hostname = {
  description : string prop option; [@option]
  dnslink : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  target : string prop;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_web3_hostname) -> ()

let yojson_of_cloudflare_web3_hostname =
  (function
   | {
       description = v_description;
       dnslink = v_dnslink;
       id = v_id;
       name = v_name;
       target = v_target;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_dnslink with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dnslink", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_web3_hostname -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_web3_hostname

[@@@deriving.end]

let cloudflare_web3_hostname ?description ?dnslink ?id ~name ~target
    ~zone_id () : cloudflare_web3_hostname =
  { description; dnslink; id; name; target; zone_id }

type t = {
  created_on : string prop;
  description : string prop;
  dnslink : string prop;
  id : string prop;
  modified_on : string prop;
  name : string prop;
  status : string prop;
  target : string prop;
  zone_id : string prop;
}

let make ?description ?dnslink ?id ~name ~target ~zone_id __id =
  let __type = "cloudflare_web3_hostname" in
  let __attrs =
    ({
       created_on = Prop.computed __type __id "created_on";
       description = Prop.computed __type __id "description";
       dnslink = Prop.computed __type __id "dnslink";
       id = Prop.computed __type __id "id";
       modified_on = Prop.computed __type __id "modified_on";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       target = Prop.computed __type __id "target";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_web3_hostname
        (cloudflare_web3_hostname ?description ?dnslink ?id ~name
           ~target ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?dnslink ?id ~name ~target
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?dnslink ?id ~name ~target ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
