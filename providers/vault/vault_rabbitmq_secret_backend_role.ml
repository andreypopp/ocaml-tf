(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vhost = {
  configure : string prop;
  host : string prop;
  read : string prop;
  write : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vhost) -> ()

let yojson_of_vhost =
  (function
   | { configure = v_configure; host = v_host; read = v_read; write = v_write } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_write in
       ("write", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_read in
       ("read", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_host in
       ("host", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_configure in
       ("configure", arg) :: bnds
     in
     `Assoc bnds
    : vhost -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vhost

[@@@deriving.end]

type vhost_topic__vhost = {
  read : string prop;
  topic : string prop;
  write : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vhost_topic__vhost) -> ()

let yojson_of_vhost_topic__vhost =
  (function
   | { read = v_read; topic = v_topic; write = v_write } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_write in
       ("write", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_topic in
       ("topic", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_read in
       ("read", arg) :: bnds
     in
     `Assoc bnds
    : vhost_topic__vhost -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vhost_topic__vhost

[@@@deriving.end]

type vhost_topic = {
  host : string prop;
  vhost : vhost_topic__vhost list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vhost_topic) -> ()

let yojson_of_vhost_topic =
  (function
   | { host = v_host; vhost = v_vhost } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_vhost then bnds
       else (
         let arg = (yojson_of_list yojson_of_vhost_topic__vhost) v_vhost in
         let bnd = "vhost", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_host in
       ("host", arg) :: bnds
     in
     `Assoc bnds
    : vhost_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vhost_topic

[@@@deriving.end]

type vault_rabbitmq_secret_backend_role = {
  backend : string prop;
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  tags : string prop option; [@option]
  vhost : vhost list; [@default []] [@yojson_drop_default Stdlib.( = )]
  vhost_topic : vhost_topic list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_rabbitmq_secret_backend_role) -> ()

let yojson_of_vault_rabbitmq_secret_backend_role =
  (function
   | {
       backend = v_backend;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       tags = v_tags;
       vhost = v_vhost;
       vhost_topic = v_vhost_topic;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_vhost_topic then bnds
       else (
         let arg = (yojson_of_list yojson_of_vhost_topic) v_vhost_topic in
         let bnd = "vhost_topic", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_vhost then bnds
       else (
         let arg = (yojson_of_list yojson_of_vhost) v_vhost in
         let bnd = "vhost", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_tags with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tags", arg in
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_rabbitmq_secret_backend_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_rabbitmq_secret_backend_role

[@@@deriving.end]

let vhost ~configure ~host ~read ~write () = ({ configure; host; read; write } : vhost)
let vhost_topic__vhost ~read ~topic ~write () = ({ read; topic; write } : vhost_topic__vhost)
let vhost_topic ?(vhost = []) ~host () = ({ host; vhost } : vhost_topic)

let vault_rabbitmq_secret_backend_role ?id ?namespace ?tags ?(vhost = []) ?(vhost_topic = []) ~backend ~name () =
  ({ backend; id; name; namespace; tags; vhost; vhost_topic } : vault_rabbitmq_secret_backend_role)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  tags : string prop;
}

let make ?id ?namespace ?tags ?(vhost = []) ?(vhost_topic = []) ~backend ~name __id =
  let __type = "vault_rabbitmq_secret_backend_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_rabbitmq_secret_backend_role
        (vault_rabbitmq_secret_backend_role ?id ?namespace ?tags ~vhost ~vhost_topic ~backend ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?tags ?(vhost = []) ?(vhost_topic = []) ~backend ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ?tags ~vhost ~vhost_topic ~backend ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
