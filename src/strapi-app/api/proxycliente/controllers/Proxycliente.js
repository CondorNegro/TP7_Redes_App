'use strict';

/**
 * Proxycliente.js controller
 *
 * @description: A set of functions called "actions" for managing `Proxycliente`.
 */

module.exports = {

  /**
   * Retrieve proxycliente records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    return strapi.services.proxycliente.fetchAll(ctx.query);
  },

  /**
   * Retrieve a proxycliente record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    if (!ctx.params._id.match(/^[0-9a-fA-F]{24}$/)) {
      return ctx.notFound();
    }

    return strapi.services.proxycliente.fetch(ctx.params);
  },

  /**
   * Count proxycliente records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.proxycliente.count(ctx.query);
  },

  /**
   * Create a/an proxycliente record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.proxycliente.add(ctx.request.body);
  },

  /**
   * Update a/an proxycliente record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.proxycliente.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an proxycliente record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.proxycliente.remove(ctx.params);
  }
};
