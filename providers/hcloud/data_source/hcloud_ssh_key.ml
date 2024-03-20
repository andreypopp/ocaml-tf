(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_ssh_key = {
  fingerprint : string prop option; [@option]
  id : float prop option; [@option]
  name : string prop option; [@option]
  selector : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_ssh_key) -> ()

let yojson_of_hcloud_ssh_key =
  (function
   | {
       fingerprint = v_fingerprint;
       id = v_id;
       name = v_name;
       selector = v_selector;
       with_selector = v_with_selector;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fingerprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fingerprint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_ssh_key

[@@@deriving.end]

let hcloud_ssh_key ?fingerprint ?id ?name ?selector ?with_selector ()
    : hcloud_ssh_key =
  { fingerprint; id; name; selector; with_selector }

type t = {
  fingerprint : string prop;
  id : float prop;
  labels : (string * string) list prop;
  name : string prop;
  public_key : string prop;
  selector : string prop;
  with_selector : string prop;
}

let make ?fingerprint ?id ?name ?selector ?with_selector __id =
  let __type = "hcloud_ssh_key" in
  let __attrs =
    ({
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       public_key = Prop.computed __type __id "public_key";
       selector = Prop.computed __type __id "selector";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_ssh_key
        (hcloud_ssh_key ?fingerprint ?id ?name ?selector
           ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?fingerprint ?id ?name ?selector
    ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?fingerprint ?id ?name ?selector ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
