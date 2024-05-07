(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__backend__virtual_service__client_policy__tls__certificate__file = {
  certificate_chain : string prop;
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__certificate__file) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__certificate__file
    =
  (function
   | {
       certificate_chain = v_certificate_chain;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__certificate__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__certificate__file

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__certificate__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__certificate__sds) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__certificate__sds
    =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__certificate__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__certificate__sds

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__certificate = {
  file :
    spec__backend__virtual_service__client_policy__tls__certificate__file
    list;
  sds :
    spec__backend__virtual_service__client_policy__tls__certificate__sds
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__certificate) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__certificate
    =
  (function
   | { file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__certificate__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__certificate__file
             v_file
         in
         ("file", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__certificate

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_exact
         in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    =
  (function
   | { match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
             v_match_
         in
         ("match", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__validation__trust__acm) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    =
  (function
   | { certificate_authority_arns = v_certificate_authority_arns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_certificate_authority_arns
         in
         ("certificate_authority_arns", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__validation__trust__acm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__acm

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__validation__trust__file) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__file
    =
  (function
   | { certificate_chain = v_certificate_chain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__validation__trust__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__file

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__validation__trust__sds) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__validation__trust__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__sds

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__validation__trust = {
  acm :
    spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    list;
  file :
    spec__backend__virtual_service__client_policy__tls__validation__trust__file
    list;
  sds :
    spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__validation__trust) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust
    =
  (function
   | { acm = v_acm; file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__file
             v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust__acm
             v_acm
         in
         ("acm", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__validation__trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    spec__backend__virtual_service__client_policy__tls__validation__trust
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend__virtual_service__client_policy__tls__validation) ->
  ()

let yojson_of_spec__backend__virtual_service__client_policy__tls__validation
    =
  (function
   | {
       subject_alternative_names = v_subject_alternative_names;
       trust = v_trust;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__validation__trust
             v_trust
         in
         ("trust", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls__validation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend__virtual_service__client_policy__tls__validation

[@@@deriving.end]

type spec__backend__virtual_service__client_policy__tls = {
  enforce : bool prop option; [@option]
  ports : float prop list option; [@option]
  certificate :
    spec__backend__virtual_service__client_policy__tls__certificate
    list;
  validation :
    spec__backend__virtual_service__client_policy__tls__validation
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__backend__virtual_service__client_policy__tls) -> ()

let yojson_of_spec__backend__virtual_service__client_policy__tls =
  (function
   | {
       enforce = v_enforce;
       ports = v_ports;
       certificate = v_certificate;
       validation = v_validation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__validation
             v_validation
         in
         ("validation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls__certificate
             v_certificate
         in
         ("certificate", arg) :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy__tls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend__virtual_service__client_policy__tls

[@@@deriving.end]

type spec__backend__virtual_service__client_policy = {
  tls : spec__backend__virtual_service__client_policy__tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend__virtual_service__client_policy) -> ()

let yojson_of_spec__backend__virtual_service__client_policy =
  (function
   | { tls = v_tls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy__tls
             v_tls
         in
         ("tls", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service__client_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend__virtual_service__client_policy

[@@@deriving.end]

type spec__backend__virtual_service = {
  virtual_service_name : string prop;
  client_policy : spec__backend__virtual_service__client_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend__virtual_service) -> ()

let yojson_of_spec__backend__virtual_service =
  (function
   | {
       virtual_service_name = v_virtual_service_name;
       client_policy = v_client_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend__virtual_service__client_policy
             v_client_policy
         in
         ("client_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_service_name
         in
         ("virtual_service_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend__virtual_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend__virtual_service

[@@@deriving.end]

type spec__backend = {
  virtual_service : spec__backend__virtual_service list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend) -> ()

let yojson_of_spec__backend =
  (function
   | { virtual_service = v_virtual_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__backend__virtual_service
             v_virtual_service
         in
         ("virtual_service", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__certificate__file = {
  certificate_chain : string prop;
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__certificate__file) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__certificate__file
    =
  (function
   | {
       certificate_chain = v_certificate_chain;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__certificate__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__certificate__file

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__certificate__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__certificate__sds) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__certificate__sds
    =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__certificate__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__certificate__sds

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__certificate = {
  file :
    spec__backend_defaults__client_policy__tls__certificate__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__certificate__sds list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__backend_defaults__client_policy__tls__certificate) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__certificate
    =
  (function
   | { file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__certificate__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__certificate__file
             v_file
         in
         ("file", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__certificate

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match = {
  exact : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_exact
         in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__subject_alternative_names = {
  match_ :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__subject_alternative_names) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    =
  (function
   | { match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
             v_match_
         in
         ("match", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__subject_alternative_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust__acm = {
  certificate_authority_arns : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust__acm) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__acm
    =
  (function
   | { certificate_authority_arns = v_certificate_authority_arns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_certificate_authority_arns
         in
         ("certificate_authority_arns", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust__acm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__acm

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust__file = {
  certificate_chain : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust__file) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__file
    =
  (function
   | { certificate_chain = v_certificate_chain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__file

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust__sds) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__sds
    =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__sds

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation__trust = {
  acm :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    list;
  file :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    list;
  sds :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__backend_defaults__client_policy__tls__validation__trust) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation__trust
    =
  (function
   | { acm = v_acm; file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__file
             v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust__acm
             v_acm
         in
         ("acm", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation__trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation__trust

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls__validation = {
  subject_alternative_names :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    list;
  trust :
    spec__backend_defaults__client_policy__tls__validation__trust
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__backend_defaults__client_policy__tls__validation) ->
  ()

let yojson_of_spec__backend_defaults__client_policy__tls__validation
    =
  (function
   | {
       subject_alternative_names = v_subject_alternative_names;
       trust = v_trust;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__trust
             v_trust
         in
         ("trust", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls__validation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__backend_defaults__client_policy__tls__validation

[@@@deriving.end]

type spec__backend_defaults__client_policy__tls = {
  enforce : bool prop option; [@option]
  ports : float prop list option; [@option]
  certificate :
    spec__backend_defaults__client_policy__tls__certificate list;
  validation :
    spec__backend_defaults__client_policy__tls__validation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend_defaults__client_policy__tls) -> ()

let yojson_of_spec__backend_defaults__client_policy__tls =
  (function
   | {
       enforce = v_enforce;
       ports = v_ports;
       certificate = v_certificate;
       validation = v_validation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__validation
             v_validation
         in
         ("validation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls__certificate
             v_certificate
         in
         ("certificate", arg) :: bnds
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforce with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy__tls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend_defaults__client_policy__tls

[@@@deriving.end]

type spec__backend_defaults__client_policy = {
  tls : spec__backend_defaults__client_policy__tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend_defaults__client_policy) -> ()

let yojson_of_spec__backend_defaults__client_policy =
  (function
   | { tls = v_tls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy__tls
             v_tls
         in
         ("tls", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults__client_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend_defaults__client_policy

[@@@deriving.end]

type spec__backend_defaults = {
  client_policy : spec__backend_defaults__client_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend_defaults) -> ()

let yojson_of_spec__backend_defaults =
  (function
   | { client_policy = v_client_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__backend_defaults__client_policy
             v_client_policy
         in
         ("client_policy", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend_defaults -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend_defaults

[@@@deriving.end]

type spec__listener__connection_pool__grpc = {
  max_requests : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool__grpc) -> ()

let yojson_of_spec__listener__connection_pool__grpc =
  (function
   | { max_requests = v_max_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_requests in
         ("max_requests", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool__grpc

[@@@deriving.end]

type spec__listener__connection_pool__http = {
  max_connections : float prop;
  max_pending_requests : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool__http) -> ()

let yojson_of_spec__listener__connection_pool__http =
  (function
   | {
       max_connections = v_max_connections;
       max_pending_requests = v_max_pending_requests;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_pending_requests with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pending_requests", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_connections
         in
         ("max_connections", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool__http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool__http

[@@@deriving.end]

type spec__listener__connection_pool__http2 = {
  max_requests : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool__http2) -> ()

let yojson_of_spec__listener__connection_pool__http2 =
  (function
   | { max_requests = v_max_requests } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_requests in
         ("max_requests", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool__http2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool__http2

[@@@deriving.end]

type spec__listener__connection_pool__tcp = {
  max_connections : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool__tcp) -> ()

let yojson_of_spec__listener__connection_pool__tcp =
  (function
   | { max_connections = v_max_connections } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_connections
         in
         ("max_connections", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool__tcp ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool__tcp

[@@@deriving.end]

type spec__listener__connection_pool = {
  grpc : spec__listener__connection_pool__grpc list;
  http : spec__listener__connection_pool__http list;
  http2 : spec__listener__connection_pool__http2 list;
  tcp : spec__listener__connection_pool__tcp list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__connection_pool) -> ()

let yojson_of_spec__listener__connection_pool =
  (function
   | { grpc = v_grpc; http = v_http; http2 = v_http2; tcp = v_tcp }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__connection_pool__tcp v_tcp
         in
         ("tcp", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__connection_pool__http2 v_http2
         in
         ("http2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__connection_pool__http v_http
         in
         ("http", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__connection_pool__grpc v_grpc
         in
         ("grpc", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__connection_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__connection_pool

[@@@deriving.end]

type spec__listener__health_check = {
  healthy_threshold : float prop;
  interval_millis : float prop;
  path : string prop option; [@option]
  port : float prop option; [@option]
  protocol : string prop;
  timeout_millis : float prop;
  unhealthy_threshold : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__health_check) -> ()

let yojson_of_spec__listener__health_check =
  (function
   | {
       healthy_threshold = v_healthy_threshold;
       interval_millis = v_interval_millis;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       timeout_millis = v_timeout_millis;
       unhealthy_threshold = v_unhealthy_threshold;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_unhealthy_threshold
         in
         ("unhealthy_threshold", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_timeout_millis in
         ("timeout_millis", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_interval_millis
         in
         ("interval_millis", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_healthy_threshold
         in
         ("healthy_threshold", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__health_check

[@@@deriving.end]

type spec__listener__outlier_detection__base_ejection_duration = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__listener__outlier_detection__base_ejection_duration) ->
  ()

let yojson_of_spec__listener__outlier_detection__base_ejection_duration
    =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__outlier_detection__base_ejection_duration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__listener__outlier_detection__base_ejection_duration

[@@@deriving.end]

type spec__listener__outlier_detection__interval = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__outlier_detection__interval) -> ()

let yojson_of_spec__listener__outlier_detection__interval =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__outlier_detection__interval ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__outlier_detection__interval

[@@@deriving.end]

type spec__listener__outlier_detection = {
  max_ejection_percent : float prop;
  max_server_errors : float prop;
  base_ejection_duration :
    spec__listener__outlier_detection__base_ejection_duration list;
  interval : spec__listener__outlier_detection__interval list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__outlier_detection) -> ()

let yojson_of_spec__listener__outlier_detection =
  (function
   | {
       max_ejection_percent = v_max_ejection_percent;
       max_server_errors = v_max_server_errors;
       base_ejection_duration = v_base_ejection_duration;
       interval = v_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__outlier_detection__interval
             v_interval
         in
         ("interval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__outlier_detection__base_ejection_duration
             v_base_ejection_duration
         in
         ("base_ejection_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_server_errors
         in
         ("max_server_errors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_ejection_percent
         in
         ("max_ejection_percent", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__outlier_detection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__outlier_detection

[@@@deriving.end]

type spec__listener__port_mapping = {
  port : float prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__port_mapping) -> ()

let yojson_of_spec__listener__port_mapping =
  (function
   | { port = v_port; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__port_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__port_mapping

[@@@deriving.end]

type spec__listener__timeout__grpc__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__grpc__idle) -> ()

let yojson_of_spec__listener__timeout__grpc__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__grpc__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__grpc__idle

[@@@deriving.end]

type spec__listener__timeout__grpc__per_request = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__grpc__per_request) -> ()

let yojson_of_spec__listener__timeout__grpc__per_request =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__grpc__per_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__grpc__per_request

[@@@deriving.end]

type spec__listener__timeout__grpc = {
  idle : spec__listener__timeout__grpc__idle list;
  per_request : spec__listener__timeout__grpc__per_request list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__grpc) -> ()

let yojson_of_spec__listener__timeout__grpc =
  (function
   | { idle = v_idle; per_request = v_per_request } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__timeout__grpc__per_request
             v_per_request
         in
         ("per_request", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__timeout__grpc__idle v_idle
         in
         ("idle", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__grpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__grpc

[@@@deriving.end]

type spec__listener__timeout__http__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__http__idle) -> ()

let yojson_of_spec__listener__timeout__http__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__http__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__http__idle

[@@@deriving.end]

type spec__listener__timeout__http__per_request = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__http__per_request) -> ()

let yojson_of_spec__listener__timeout__http__per_request =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__http__per_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__http__per_request

[@@@deriving.end]

type spec__listener__timeout__http = {
  idle : spec__listener__timeout__http__idle list;
  per_request : spec__listener__timeout__http__per_request list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__http) -> ()

let yojson_of_spec__listener__timeout__http =
  (function
   | { idle = v_idle; per_request = v_per_request } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__timeout__http__per_request
             v_per_request
         in
         ("per_request", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__timeout__http__idle v_idle
         in
         ("idle", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__http

[@@@deriving.end]

type spec__listener__timeout__http2__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__http2__idle) -> ()

let yojson_of_spec__listener__timeout__http2__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__http2__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__http2__idle

[@@@deriving.end]

type spec__listener__timeout__http2__per_request = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__http2__per_request) -> ()

let yojson_of_spec__listener__timeout__http2__per_request =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__http2__per_request ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__http2__per_request

[@@@deriving.end]

type spec__listener__timeout__http2 = {
  idle : spec__listener__timeout__http2__idle list;
  per_request : spec__listener__timeout__http2__per_request list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__http2) -> ()

let yojson_of_spec__listener__timeout__http2 =
  (function
   | { idle = v_idle; per_request = v_per_request } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__timeout__http2__per_request
             v_per_request
         in
         ("per_request", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__timeout__http2__idle v_idle
         in
         ("idle", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__http2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__http2

[@@@deriving.end]

type spec__listener__timeout__tcp__idle = {
  unit : string prop;
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__tcp__idle) -> ()

let yojson_of_spec__listener__timeout__tcp__idle =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__tcp__idle ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__tcp__idle

[@@@deriving.end]

type spec__listener__timeout__tcp = {
  idle : spec__listener__timeout__tcp__idle list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout__tcp) -> ()

let yojson_of_spec__listener__timeout__tcp =
  (function
   | { idle = v_idle } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__timeout__tcp__idle v_idle
         in
         ("idle", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout__tcp ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout__tcp

[@@@deriving.end]

type spec__listener__timeout = {
  grpc : spec__listener__timeout__grpc list;
  http : spec__listener__timeout__http list;
  http2 : spec__listener__timeout__http2 list;
  tcp : spec__listener__timeout__tcp list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__timeout) -> ()

let yojson_of_spec__listener__timeout =
  (function
   | { grpc = v_grpc; http = v_http; http2 = v_http2; tcp = v_tcp }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__timeout__tcp
             v_tcp
         in
         ("tcp", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__timeout__http2
             v_http2
         in
         ("http2", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__timeout__http
             v_http
         in
         ("http", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__timeout__grpc
             v_grpc
         in
         ("grpc", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__timeout

[@@@deriving.end]

type spec__listener__tls__certificate__acm = {
  certificate_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate__acm) -> ()

let yojson_of_spec__listener__tls__certificate__acm =
  (function
   | { certificate_arn = v_certificate_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate__acm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate__acm

[@@@deriving.end]

type spec__listener__tls__certificate__file = {
  certificate_chain : string prop;
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate__file) -> ()

let yojson_of_spec__listener__tls__certificate__file =
  (function
   | {
       certificate_chain = v_certificate_chain;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate__file

[@@@deriving.end]

type spec__listener__tls__certificate__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate__sds) -> ()

let yojson_of_spec__listener__tls__certificate__sds =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate__sds

[@@@deriving.end]

type spec__listener__tls__certificate = {
  acm : spec__listener__tls__certificate__acm list;
  file : spec__listener__tls__certificate__file list;
  sds : spec__listener__tls__certificate__sds list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__certificate) -> ()

let yojson_of_spec__listener__tls__certificate =
  (function
   | { acm = v_acm; file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__certificate__sds v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__certificate__file v_file
         in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__certificate__acm v_acm
         in
         ("acm", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__certificate

[@@@deriving.end]

type spec__listener__tls__validation__subject_alternative_names__match = {
  exact : string prop list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__listener__tls__validation__subject_alternative_names__match) ->
  ()

let yojson_of_spec__listener__tls__validation__subject_alternative_names__match
    =
  (function
   | { exact = v_exact } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_exact
         in
         ("exact", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__subject_alternative_names__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__listener__tls__validation__subject_alternative_names__match

[@@@deriving.end]

type spec__listener__tls__validation__subject_alternative_names = {
  match_ :
    spec__listener__tls__validation__subject_alternative_names__match
    list;
      [@key "match"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__listener__tls__validation__subject_alternative_names) ->
  ()

let yojson_of_spec__listener__tls__validation__subject_alternative_names
    =
  (function
   | { match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__subject_alternative_names__match
             v_match_
         in
         ("match", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__subject_alternative_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__listener__tls__validation__subject_alternative_names

[@@@deriving.end]

type spec__listener__tls__validation__trust__file = {
  certificate_chain : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation__trust__file) -> ()

let yojson_of_spec__listener__tls__validation__trust__file =
  (function
   | { certificate_chain = v_certificate_chain } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_chain
         in
         ("certificate_chain", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__trust__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation__trust__file

[@@@deriving.end]

type spec__listener__tls__validation__trust__sds = {
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation__trust__sds) -> ()

let yojson_of_spec__listener__tls__validation__trust__sds =
  (function
   | { secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__trust__sds ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation__trust__sds

[@@@deriving.end]

type spec__listener__tls__validation__trust = {
  file : spec__listener__tls__validation__trust__file list;
  sds : spec__listener__tls__validation__trust__sds list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation__trust) -> ()

let yojson_of_spec__listener__tls__validation__trust =
  (function
   | { file = v_file; sds = v_sds } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__trust__sds
             v_sds
         in
         ("sds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__trust__file
             v_file
         in
         ("file", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation__trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation__trust

[@@@deriving.end]

type spec__listener__tls__validation = {
  subject_alternative_names :
    spec__listener__tls__validation__subject_alternative_names list;
  trust : spec__listener__tls__validation__trust list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls__validation) -> ()

let yojson_of_spec__listener__tls__validation =
  (function
   | {
       subject_alternative_names = v_subject_alternative_names;
       trust = v_trust;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__trust v_trust
         in
         ("trust", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__listener__tls__validation__subject_alternative_names
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls__validation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls__validation

[@@@deriving.end]

type spec__listener__tls = {
  mode : string prop;
  certificate : spec__listener__tls__certificate list;
  validation : spec__listener__tls__validation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__tls) -> ()

let yojson_of_spec__listener__tls =
  (function
   | {
       mode = v_mode;
       certificate = v_certificate;
       validation = v_validation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__tls__validation
             v_validation
         in
         ("validation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__tls__certificate
             v_certificate
         in
         ("certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__tls

[@@@deriving.end]

type spec__listener = {
  connection_pool : spec__listener__connection_pool list;
  health_check : spec__listener__health_check list;
  outlier_detection : spec__listener__outlier_detection list;
  port_mapping : spec__listener__port_mapping list;
  timeout : spec__listener__timeout list;
  tls : spec__listener__tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener) -> ()

let yojson_of_spec__listener =
  (function
   | {
       connection_pool = v_connection_pool;
       health_check = v_health_check;
       outlier_detection = v_outlier_detection;
       port_mapping = v_port_mapping;
       timeout = v_timeout;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__tls v_tls
         in
         ("tls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__timeout v_timeout
         in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__port_mapping
             v_port_mapping
         in
         ("port_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__outlier_detection
             v_outlier_detection
         in
         ("outlier_detection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__health_check
             v_health_check
         in
         ("health_check", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener__connection_pool
             v_connection_pool
         in
         ("connection_pool", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener

[@@@deriving.end]

type spec__logging__access_log__file__format__json = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log__file__format__json) -> ()

let yojson_of_spec__logging__access_log__file__format__json =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log__file__format__json ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log__file__format__json

[@@@deriving.end]

type spec__logging__access_log__file__format = {
  text : string prop option; [@option]
  json : spec__logging__access_log__file__format__json list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log__file__format) -> ()

let yojson_of_spec__logging__access_log__file__format =
  (function
   | { text = v_text; json = v_json } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__logging__access_log__file__format__json
             v_json
         in
         ("json", arg) :: bnds
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log__file__format ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log__file__format

[@@@deriving.end]

type spec__logging__access_log__file = {
  path : string prop;
  format : spec__logging__access_log__file__format list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log__file) -> ()

let yojson_of_spec__logging__access_log__file =
  (function
   | { path = v_path; format = v_format } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__logging__access_log__file__format
             v_format
         in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log__file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log__file

[@@@deriving.end]

type spec__logging__access_log = {
  file : spec__logging__access_log__file list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging__access_log) -> ()

let yojson_of_spec__logging__access_log =
  (function
   | { file = v_file } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__logging__access_log__file
             v_file
         in
         ("file", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging__access_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging__access_log

[@@@deriving.end]

type spec__logging = { access_log : spec__logging__access_log list }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__logging) -> ()

let yojson_of_spec__logging =
  (function
   | { access_log = v_access_log } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__logging__access_log
             v_access_log
         in
         ("access_log", arg) :: bnds
       in
       `Assoc bnds
    : spec__logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__logging

[@@@deriving.end]

type spec__service_discovery__aws_cloud_map = {
  attributes : (string * string prop) list option; [@option]
  namespace_name : string prop;
  service_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service_discovery__aws_cloud_map) -> ()

let yojson_of_spec__service_discovery__aws_cloud_map =
  (function
   | {
       attributes = v_attributes;
       namespace_name = v_namespace_name;
       service_name = v_service_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
       in
       let bnds =
         match v_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__service_discovery__aws_cloud_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service_discovery__aws_cloud_map

[@@@deriving.end]

type spec__service_discovery__dns = {
  hostname : string prop;
  ip_preference : string prop option; [@option]
  response_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service_discovery__dns) -> ()

let yojson_of_spec__service_discovery__dns =
  (function
   | {
       hostname = v_hostname;
       ip_preference = v_ip_preference;
       response_type = v_response_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_preference", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : spec__service_discovery__dns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service_discovery__dns

[@@@deriving.end]

type spec__service_discovery = {
  aws_cloud_map : spec__service_discovery__aws_cloud_map list;
  dns : spec__service_discovery__dns list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service_discovery) -> ()

let yojson_of_spec__service_discovery =
  (function
   | { aws_cloud_map = v_aws_cloud_map; dns = v_dns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service_discovery__dns
             v_dns
         in
         ("dns", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__service_discovery__aws_cloud_map
             v_aws_cloud_map
         in
         ("aws_cloud_map", arg) :: bnds
       in
       `Assoc bnds
    : spec__service_discovery -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service_discovery

[@@@deriving.end]

type spec = {
  backend : spec__backend list;
  backend_defaults : spec__backend_defaults list;
  listener : spec__listener list;
  logging : spec__logging list;
  service_discovery : spec__service_discovery list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       backend = v_backend;
       backend_defaults = v_backend_defaults;
       listener = v_listener;
       logging = v_logging;
       service_discovery = v_service_discovery;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__service_discovery
             v_service_discovery
         in
         ("service_discovery", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__logging v_logging
         in
         ("logging", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__listener v_listener
         in
         ("listener", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__backend_defaults
             v_backend_defaults
         in
         ("backend_defaults", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__backend v_backend
         in
         ("backend", arg) :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type aws_appmesh_virtual_node = {
  id : string prop option; [@option]
  mesh_name : string prop;
  mesh_owner : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  spec : spec list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appmesh_virtual_node) -> ()

let yojson_of_aws_appmesh_virtual_node =
  (function
   | {
       id = v_id;
       mesh_name = v_mesh_name;
       mesh_owner = v_mesh_owner;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       spec = v_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mesh_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mesh_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mesh_name in
         ("mesh_name", arg) :: bnds
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
    : aws_appmesh_virtual_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appmesh_virtual_node

[@@@deriving.end]

let spec__backend__virtual_service__client_policy__tls__certificate__file
    ~certificate_chain ~private_key () :
    spec__backend__virtual_service__client_policy__tls__certificate__file
    =
  { certificate_chain; private_key }

let spec__backend__virtual_service__client_policy__tls__certificate__sds
    ~secret_name () :
    spec__backend__virtual_service__client_policy__tls__certificate__sds
    =
  { secret_name }

let spec__backend__virtual_service__client_policy__tls__certificate
    ?(file = []) ?(sds = []) () :
    spec__backend__virtual_service__client_policy__tls__certificate =
  { file; sds }

let spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    ~match_ () :
    spec__backend__virtual_service__client_policy__tls__validation__subject_alternative_names
    =
  { match_ }

let spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    ~certificate_authority_arns () :
    spec__backend__virtual_service__client_policy__tls__validation__trust__acm
    =
  { certificate_authority_arns }

let spec__backend__virtual_service__client_policy__tls__validation__trust__file
    ~certificate_chain () :
    spec__backend__virtual_service__client_policy__tls__validation__trust__file
    =
  { certificate_chain }

let spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    ~secret_name () :
    spec__backend__virtual_service__client_policy__tls__validation__trust__sds
    =
  { secret_name }

let spec__backend__virtual_service__client_policy__tls__validation__trust
    ?(acm = []) ?(file = []) ?(sds = []) () :
    spec__backend__virtual_service__client_policy__tls__validation__trust
    =
  { acm; file; sds }

let spec__backend__virtual_service__client_policy__tls__validation
    ?(subject_alternative_names = []) ~trust () :
    spec__backend__virtual_service__client_policy__tls__validation =
  { subject_alternative_names; trust }

let spec__backend__virtual_service__client_policy__tls ?enforce
    ?ports ?(certificate = []) ~validation () :
    spec__backend__virtual_service__client_policy__tls =
  { enforce; ports; certificate; validation }

let spec__backend__virtual_service__client_policy ?(tls = []) () :
    spec__backend__virtual_service__client_policy =
  { tls }

let spec__backend__virtual_service ?(client_policy = [])
    ~virtual_service_name () : spec__backend__virtual_service =
  { virtual_service_name; client_policy }

let spec__backend ~virtual_service () : spec__backend =
  { virtual_service }

let spec__backend_defaults__client_policy__tls__certificate__file
    ~certificate_chain ~private_key () :
    spec__backend_defaults__client_policy__tls__certificate__file =
  { certificate_chain; private_key }

let spec__backend_defaults__client_policy__tls__certificate__sds
    ~secret_name () :
    spec__backend_defaults__client_policy__tls__certificate__sds =
  { secret_name }

let spec__backend_defaults__client_policy__tls__certificate
    ?(file = []) ?(sds = []) () :
    spec__backend_defaults__client_policy__tls__certificate =
  { file; sds }

let spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    ~match_ () :
    spec__backend_defaults__client_policy__tls__validation__subject_alternative_names
    =
  { match_ }

let spec__backend_defaults__client_policy__tls__validation__trust__acm
    ~certificate_authority_arns () :
    spec__backend_defaults__client_policy__tls__validation__trust__acm
    =
  { certificate_authority_arns }

let spec__backend_defaults__client_policy__tls__validation__trust__file
    ~certificate_chain () :
    spec__backend_defaults__client_policy__tls__validation__trust__file
    =
  { certificate_chain }

let spec__backend_defaults__client_policy__tls__validation__trust__sds
    ~secret_name () :
    spec__backend_defaults__client_policy__tls__validation__trust__sds
    =
  { secret_name }

let spec__backend_defaults__client_policy__tls__validation__trust
    ?(acm = []) ?(file = []) ?(sds = []) () :
    spec__backend_defaults__client_policy__tls__validation__trust =
  { acm; file; sds }

let spec__backend_defaults__client_policy__tls__validation
    ?(subject_alternative_names = []) ~trust () :
    spec__backend_defaults__client_policy__tls__validation =
  { subject_alternative_names; trust }

let spec__backend_defaults__client_policy__tls ?enforce ?ports
    ?(certificate = []) ~validation () :
    spec__backend_defaults__client_policy__tls =
  { enforce; ports; certificate; validation }

let spec__backend_defaults__client_policy ?(tls = []) () :
    spec__backend_defaults__client_policy =
  { tls }

let spec__backend_defaults ?(client_policy = []) () :
    spec__backend_defaults =
  { client_policy }

let spec__listener__connection_pool__grpc ~max_requests () :
    spec__listener__connection_pool__grpc =
  { max_requests }

let spec__listener__connection_pool__http ?max_pending_requests
    ~max_connections () : spec__listener__connection_pool__http =
  { max_connections; max_pending_requests }

let spec__listener__connection_pool__http2 ~max_requests () :
    spec__listener__connection_pool__http2 =
  { max_requests }

let spec__listener__connection_pool__tcp ~max_connections () :
    spec__listener__connection_pool__tcp =
  { max_connections }

let spec__listener__connection_pool ?(grpc = []) ?(http = [])
    ?(http2 = []) ?(tcp = []) () : spec__listener__connection_pool =
  { grpc; http; http2; tcp }

let spec__listener__health_check ?path ?port ~healthy_threshold
    ~interval_millis ~protocol ~timeout_millis ~unhealthy_threshold
    () : spec__listener__health_check =
  {
    healthy_threshold;
    interval_millis;
    path;
    port;
    protocol;
    timeout_millis;
    unhealthy_threshold;
  }

let spec__listener__outlier_detection__base_ejection_duration ~unit
    ~value () :
    spec__listener__outlier_detection__base_ejection_duration =
  { unit; value }

let spec__listener__outlier_detection__interval ~unit ~value () :
    spec__listener__outlier_detection__interval =
  { unit; value }

let spec__listener__outlier_detection ~max_ejection_percent
    ~max_server_errors ~base_ejection_duration ~interval () :
    spec__listener__outlier_detection =
  {
    max_ejection_percent;
    max_server_errors;
    base_ejection_duration;
    interval;
  }

let spec__listener__port_mapping ~port ~protocol () :
    spec__listener__port_mapping =
  { port; protocol }

let spec__listener__timeout__grpc__idle ~unit ~value () :
    spec__listener__timeout__grpc__idle =
  { unit; value }

let spec__listener__timeout__grpc__per_request ~unit ~value () :
    spec__listener__timeout__grpc__per_request =
  { unit; value }

let spec__listener__timeout__grpc ?(idle = []) ?(per_request = []) ()
    : spec__listener__timeout__grpc =
  { idle; per_request }

let spec__listener__timeout__http__idle ~unit ~value () :
    spec__listener__timeout__http__idle =
  { unit; value }

let spec__listener__timeout__http__per_request ~unit ~value () :
    spec__listener__timeout__http__per_request =
  { unit; value }

let spec__listener__timeout__http ?(idle = []) ?(per_request = []) ()
    : spec__listener__timeout__http =
  { idle; per_request }

let spec__listener__timeout__http2__idle ~unit ~value () :
    spec__listener__timeout__http2__idle =
  { unit; value }

let spec__listener__timeout__http2__per_request ~unit ~value () :
    spec__listener__timeout__http2__per_request =
  { unit; value }

let spec__listener__timeout__http2 ?(idle = []) ?(per_request = [])
    () : spec__listener__timeout__http2 =
  { idle; per_request }

let spec__listener__timeout__tcp__idle ~unit ~value () :
    spec__listener__timeout__tcp__idle =
  { unit; value }

let spec__listener__timeout__tcp ?(idle = []) () :
    spec__listener__timeout__tcp =
  { idle }

let spec__listener__timeout ?(grpc = []) ?(http = []) ?(http2 = [])
    ?(tcp = []) () : spec__listener__timeout =
  { grpc; http; http2; tcp }

let spec__listener__tls__certificate__acm ~certificate_arn () :
    spec__listener__tls__certificate__acm =
  { certificate_arn }

let spec__listener__tls__certificate__file ~certificate_chain
    ~private_key () : spec__listener__tls__certificate__file =
  { certificate_chain; private_key }

let spec__listener__tls__certificate__sds ~secret_name () :
    spec__listener__tls__certificate__sds =
  { secret_name }

let spec__listener__tls__certificate ?(acm = []) ?(file = [])
    ?(sds = []) () : spec__listener__tls__certificate =
  { acm; file; sds }

let spec__listener__tls__validation__subject_alternative_names__match
    ~exact () :
    spec__listener__tls__validation__subject_alternative_names__match
    =
  { exact }

let spec__listener__tls__validation__subject_alternative_names
    ~match_ () :
    spec__listener__tls__validation__subject_alternative_names =
  { match_ }

let spec__listener__tls__validation__trust__file ~certificate_chain
    () : spec__listener__tls__validation__trust__file =
  { certificate_chain }

let spec__listener__tls__validation__trust__sds ~secret_name () :
    spec__listener__tls__validation__trust__sds =
  { secret_name }

let spec__listener__tls__validation__trust ?(file = []) ?(sds = [])
    () : spec__listener__tls__validation__trust =
  { file; sds }

let spec__listener__tls__validation ?(subject_alternative_names = [])
    ~trust () : spec__listener__tls__validation =
  { subject_alternative_names; trust }

let spec__listener__tls ?(validation = []) ~mode ~certificate () :
    spec__listener__tls =
  { mode; certificate; validation }

let spec__listener ?(connection_pool = []) ?(health_check = [])
    ?(outlier_detection = []) ?(timeout = []) ?(tls = [])
    ~port_mapping () : spec__listener =
  {
    connection_pool;
    health_check;
    outlier_detection;
    port_mapping;
    timeout;
    tls;
  }

let spec__logging__access_log__file__format__json ~key ~value () :
    spec__logging__access_log__file__format__json =
  { key; value }

let spec__logging__access_log__file__format ?text ?(json = []) () :
    spec__logging__access_log__file__format =
  { text; json }

let spec__logging__access_log__file ?(format = []) ~path () :
    spec__logging__access_log__file =
  { path; format }

let spec__logging__access_log ?(file = []) () :
    spec__logging__access_log =
  { file }

let spec__logging ?(access_log = []) () : spec__logging =
  { access_log }

let spec__service_discovery__aws_cloud_map ?attributes
    ~namespace_name ~service_name () :
    spec__service_discovery__aws_cloud_map =
  { attributes; namespace_name; service_name }

let spec__service_discovery__dns ?ip_preference ?response_type
    ~hostname () : spec__service_discovery__dns =
  { hostname; ip_preference; response_type }

let spec__service_discovery ?(aws_cloud_map = []) ?(dns = []) () :
    spec__service_discovery =
  { aws_cloud_map; dns }

let spec ?(backend_defaults = []) ?(listener = []) ?(logging = [])
    ?(service_discovery = []) ~backend () : spec =
  { backend; backend_defaults; listener; logging; service_discovery }

let aws_appmesh_virtual_node ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec () : aws_appmesh_virtual_node =
  { id; mesh_name; mesh_owner; name; tags; tags_all; spec }

type t = {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
    =
  let __type = "aws_appmesh_virtual_node" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       mesh_name = Prop.computed __type __id "mesh_name";
       mesh_owner = Prop.computed __type __id "mesh_owner";
       name = Prop.computed __type __id "name";
       resource_owner = Prop.computed __type __id "resource_owner";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_virtual_node
        (aws_appmesh_virtual_node ?id ?mesh_owner ?tags ?tags_all
           ~mesh_name ~name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
