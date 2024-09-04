(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination__amp

val destination__amp :
  workspace_arn:string prop -> unit -> destination__amp

type destination

val destination : ?amp:destination__amp list -> unit -> destination

type source__eks

val source__eks :
  ?security_group_ids:string prop list ->
  cluster_arn:string prop ->
  subnet_ids:string prop list ->
  unit ->
  source__eks

type source

val source : ?eks:source__eks list -> unit -> source

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_prometheus_scraper

val aws_prometheus_scraper :
  ?alias:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?destination:destination list ->
  ?source:source list ->
  ?timeouts:timeouts ->
  scrape_configuration:string prop ->
  unit ->
  aws_prometheus_scraper

val yojson_of_aws_prometheus_scraper : aws_prometheus_scraper -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  id : string prop;
  role_arn : string prop;
  scrape_configuration : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?alias:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?destination:destination list ->
  ?source:source list ->
  ?timeouts:timeouts ->
  scrape_configuration:string prop ->
  string ->
  t

val make :
  ?alias:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?destination:destination list ->
  ?source:source list ->
  ?timeouts:timeouts ->
  scrape_configuration:string prop ->
  string ->
  t Tf_core.resource
