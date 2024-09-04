(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_magic_firewall_ruleset = {
  account_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  rules : string prop Tf_core.assoc list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_magic_firewall_ruleset) -> ()

let yojson_of_cloudflare_magic_firewall_ruleset =
  (function
   | {
       account_id = v_account_id;
       description = v_description;
       id = v_id;
       name = v_name;
       rules = v_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (Tf_core.yojson_of_assoc
                    (yojson_of_prop yojson_of_string))
                 v
             in
             let bnd = "rules", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_magic_firewall_ruleset ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_magic_firewall_ruleset

[@@@deriving.end]

let cloudflare_magic_firewall_ruleset ?description ?id ?rules
    ~account_id ~name () : cloudflare_magic_firewall_ruleset =
  { account_id; description; id; name; rules }

type t = {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rules : string Tf_core.assoc list prop;
}

let make ?description ?id ?rules ~account_id ~name __id =
  let __type = "cloudflare_magic_firewall_ruleset" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rules = Prop.computed __type __id "rules";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_magic_firewall_ruleset
        (cloudflare_magic_firewall_ruleset ?description ?id ?rules
           ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?rules ~account_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?rules ~account_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
