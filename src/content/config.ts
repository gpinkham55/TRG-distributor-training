import { defineCollection, z } from 'astro:content';

const modules = defineCollection({
  type: 'content',
  schema: z.object({
    number: z.number(),
    title: z.string(),
    week: z.number(),
    minutes: z.number(),
    signoff: z.boolean().default(false),
    status: z.enum(['draft', 'published']).default('draft'),
    summary: z.string(),
  }),
});

export const collections = { modules };
