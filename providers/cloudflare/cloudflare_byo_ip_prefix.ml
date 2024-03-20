(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_byo_ip_prefix = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  advertisement : string prop option; [@option]
      (** Whether or not the prefix shall be announced. A prefix can be activated or deactivated once every 15 minutes (attempting more regular updates will trigger rate limiting). Available values: `on`, `off`. *)
  description : string prop option; [@option]
      (** Description of the BYO IP prefix. *)
  id : string prop option; [@option]  (** id *)
  prefix_id : string prop;
      (** The assigned Bring-Your-Own-IP prefix ID. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides the ability to manage Bring-Your-Own-IP prefixes (BYOIP)
which are used with or without Magic Transit.
 *)

let cloudflare_byo_ip_prefix ?advertisement ?description ?id
    ~account_id ~prefix_id () : cloudflare_byo_ip_prefix =
  { account_id; advertisement; description; id; prefix_id }

type t = {
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
