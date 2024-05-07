(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_account = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_account) -> ()

let yojson_of_digitalocean_account =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_account

[@@@deriving.end]

let digitalocean_account ?id () : digitalocean_account = { id }

type t = {
  tf_name : string;
  droplet_limit : float prop;
  email : string prop;
  email_verified : bool prop;
  floating_ip_limit : float prop;
  id : string prop;
  status : string prop;
  status_message : string prop;
  uuid : string prop;
}

let make ?id __id =
  let __type = "digitalocean_account" in
  let __attrs =
    ({
       tf_name = __id;
       droplet_limit = Prop.computed __type __id "droplet_limit";
       email = Prop.computed __type __id "email";
       email_verified = Prop.computed __type __id "email_verified";
       floating_ip_limit =
         Prop.computed __type __id "floating_ip_limit";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       status_message = Prop.computed __type __id "status_message";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_account (digitalocean_account ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
