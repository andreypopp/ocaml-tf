(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type signing_attributes = {
  algorithm : float prop;
  flags : float prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : signing_attributes) -> ()

let yojson_of_signing_attributes =
  (function
   | {
       algorithm = v_algorithm;
       flags = v_flags;
       public_key = v_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_flags in
         ("flags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : signing_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_signing_attributes

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_route53domains_delegation_signer_record = {
  domain_name : string prop;
  signing_attributes : signing_attributes list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53domains_delegation_signer_record) -> ()

let yojson_of_aws_route53domains_delegation_signer_record =
  (function
   | {
       domain_name = v_domain_name;
       signing_attributes = v_signing_attributes;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_signing_attributes
             v_signing_attributes
         in
         ("signing_attributes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53domains_delegation_signer_record ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53domains_delegation_signer_record

[@@@deriving.end]

let signing_attributes ~algorithm ~flags ~public_key () :
    signing_attributes =
  { algorithm; flags; public_key }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_route53domains_delegation_signer_record
    ?(signing_attributes = []) ?timeouts ~domain_name () :
    aws_route53domains_delegation_signer_record =
  { domain_name; signing_attributes; timeouts }

type t = {
  dnssec_key_id : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?(signing_attributes = []) ?timeouts ~domain_name __id =
  let __type = "aws_route53domains_delegation_signer_record" in
  let __attrs =
    ({
       dnssec_key_id = Prop.computed __type __id "dnssec_key_id";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53domains_delegation_signer_record
        (aws_route53domains_delegation_signer_record
           ~signing_attributes ?timeouts ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?(signing_attributes = []) ?timeouts
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ~signing_attributes ?timeouts ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
