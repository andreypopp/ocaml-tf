(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_byo_ip_prefix = {
  account_id : string prop;
  advertisement : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  prefix_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_byo_ip_prefix) -> ()

let yojson_of_cloudflare_byo_ip_prefix =
  (function
   | {
       account_id = v_account_id;
       advertisement = v_advertisement;
       description = v_description;
       id = v_id;
       prefix_id = v_prefix_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix_id in
         ("prefix_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advertisement with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "advertisement", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_byo_ip_prefix -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_byo_ip_prefix

[@@@deriving.end]

let cloudflare_byo_ip_prefix ?advertisement ?description ?id
    ~account_id ~prefix_id () : cloudflare_byo_ip_prefix =
  { account_id; advertisement; description; id; prefix_id }

type t = {
  tf_name : string;
  account_id : string prop;
  advertisement : string prop;
  description : string prop;
  id : string prop;
  prefix_id : string prop;
}

let make ?advertisement ?description ?id ~account_id ~prefix_id __id
    =
  let __type = "cloudflare_byo_ip_prefix" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       advertisement = Prop.computed __type __id "advertisement";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       prefix_id = Prop.computed __type __id "prefix_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_byo_ip_prefix
        (cloudflare_byo_ip_prefix ?advertisement ?description ?id
           ~account_id ~prefix_id ());
    attrs = __attrs;
  }

let register ?tf_module ?advertisement ?description ?id ~account_id
    ~prefix_id __id =
  let (r : _ Tf_core.resource) =
    make ?advertisement ?description ?id ~account_id ~prefix_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
