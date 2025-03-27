(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_secrets_sync_config = {
  disabled : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  queue_capacity : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_secrets_sync_config) -> ()

let yojson_of_vault_secrets_sync_config =
  (function
   | { disabled = v_disabled; id = v_id; namespace = v_namespace; queue_capacity = v_queue_capacity } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_queue_capacity with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "queue_capacity", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
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
       match v_disabled with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disabled", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_secrets_sync_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_secrets_sync_config

[@@@deriving.end]

let vault_secrets_sync_config ?disabled ?id ?namespace ?queue_capacity () =
  ({ disabled; id; namespace; queue_capacity } : vault_secrets_sync_config)

type t = {
  tf_name : string;
  disabled : bool prop;
  id : string prop;
  namespace : string prop;
  queue_capacity : float prop;
}

let make ?disabled ?id ?namespace ?queue_capacity __id =
  let __type = "vault_secrets_sync_config" in
  let __attrs =
    ({
       tf_name = __id;
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       queue_capacity = Prop.computed __type __id "queue_capacity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_secrets_sync_config (vault_secrets_sync_config ?disabled ?id ?namespace ?queue_capacity ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ?namespace ?queue_capacity __id =
  let (r : _ Tf_core.resource) = make ?disabled ?id ?namespace ?queue_capacity __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
