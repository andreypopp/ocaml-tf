(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type signing_attributes = {
  algorithm : float prop;  (** algorithm *)
  flags : float prop;  (** flags *)
  public_key : string prop;  (** public_key *)
}
[@@deriving yojson_of]
(** signing_attributes *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53domains_delegation_signer_record = {
  domain_name : string prop;  (** domain_name *)
  signing_attributes : signing_attributes list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53domains_delegation_signer_record *)

let signing_attributes ~algorithm ~flags ~public_key () :
    signing_attributes =
  { algorithm; flags; public_key }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_route53domains_delegation_signer_record ?timeouts
    ~domain_name ~signing_attributes () :
    aws_route53domains_delegation_signer_record =
  { domain_name; signing_attributes; timeouts }

type t = {
  dnssec_key_id : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?timeouts ~domain_name ~signing_attributes __id =
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
        (aws_route53domains_delegation_signer_record ?timeouts
           ~domain_name ~signing_attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~domain_name ~signing_attributes
    __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~domain_name ~signing_attributes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
